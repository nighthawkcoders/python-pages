# default call server and starts logging
default: server
	@echo "Terminal logging starting..."
	@# tail and awk work together to extract Jekyll regeneration messages
	@@(tail -f /tmp/jekyll4100.log | awk '/Server address: http:\/\/0.0.0.0:4100\/teacher\// { serverReady=1 } serverReady && /^ *Regenerating:/ { regenerate=1 } regenerate { if (/^[[:blank:]]*$$/) { regenerate=0 } else { print } }') 2>/dev/null &
	@# start a infinite loop with timeout to check log status
	@for ((COUNTER = 0; ; COUNTER++)); do \
		if grep -q "Server address:" /tmp/jekyll4100.log; then \
			echo "Server is running in $$COUNTER seconds"; \
			break; \
		fi; \
		if [ $$COUNTER -eq 60 ]; then \
			echo "Server timed out after $$COUNTER seconds."; \
			echo "Review errors from /tmp/jekyll4100.log."; \
			cat /tmp/jekyll4100.log; \
			exit 1; \
		fi; \
		sleep 1; \
	done
	@# outputs startup log, removes last line ($$d) as ctl-c message is not applicable for background process
	@@sed '$$d' /tmp/jekyll4100.log
	
# start the local web server
server: clean convert
	@echo "Starting server..."
	@@nohup bundle exec jekyll serve -H 0.0.0.0 -P 4100 > /tmp/jekyll4100.log 2>&1 & \
		PID=$$!; \
		echo "Server PID: $$PID"
	@@until [ -f /tmp/jekyll4100.log ]; do sleep 1; done
	@echo "Server is running"


# convert nb notebooks to markdown
convert:
	@echo "Converting IPYNB files..."
	@python scripts/convert_notebooks.py


# clean up project, to avoid issues stop is dependency
clean: stop
	@echo "Cleaning converted IPYNB files..."
	@@rm -f _posts/*_IPYNB_2_.md
	@rm -rf _site


# stop the server and clean up the port
stop:
	@echo "Stopping server..."
	@# kills process running on port 4100
	@@lsof -ti :4100 | xargs kill >/dev/null 2>&1 || true
	@echo "Stopping logging process..."
	@# kills previously running logging processes
	@@ps aux | awk '/tail -f \/tmp\/jekyll4100.log/ { print $$2 }' | xargs kill >/dev/null 2>&1 || true
	@# removes log
	@rm -f /tmp/jekyll4100.log


