## Blog site using GitHub Pages and Jekyll
> This site is intended for Teachers.  
- This is to build lessons and distribute across different sections (CSSE, CSP, CSA).
- Section are Computer Science Pathway over 3 years of High School Instruction.
- The primary languages are JavaScript/HTML/CSS, Python/Flask, Java/Spring.  
- The focus of instruction is Full Stack Web Development.  This is used as it provides a variety of technologies and exposures.
- JavaScript documents are new material for entry class into the pathway, they are prerequisites for the Python and Java classes.
- Most Tech Talks, lectures, are intended to be interactive and utilize Jupyter Notebooks using Python kernel, except Java which requires it own kernel.

## Preview Site 
> GitHub Pages development is optimized by testing and developing on your local machine.  This is called previewing you work, prior to commit and push.

### WSL installation requirements
- Install for Ubuntu using apt, full details on [jekyllrb.com](https://jekyllrb.com/docs/installation/ubuntu/)
```bash
# ruby
sudo apt install ruby-full build-essential zlib1g-dev
# avoid root user, set up a gem installation directory for your user account
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# install jekyll and bundler
gem install jekyll bundler
```

### MacOs installation requirements 
- Install for MacOS using brew, full details on [jekyllrb.com](https://jekyllrb.com/docs/installation/macos/)
```bash
# ruby
brew install chruby ruby-install xz
ruby-install ruby 3.1.3
# configure ruby into shell .zshrc or change to .bash_profile
echo "source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source $(brew --prefix)/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-3.1.3" >> ~/.zshrc # run 'chruby' to see actual version
#
# quit and relaunch terminal
#
# install jekyll
gem install jekyll
```

### Run Locally
- Result of these step is server running on: http://0.0.0.0:4100/teacher/.  Regeneration messages will run in terminal on any save.  Press Enter key in terminal at any time to type commands.

- Complete installation
```bash
bundle install
```
- Now the project is ready for preview.  To simplify running, typing, and review logging details a ```Makefile``` is used.  Review the Makefile for deeper analysis on instructions.

    - Start preview server in terminal locating to project directory
    ```bash
    cd ~/vscode/teacher  # my project location, adapt as necessary
    make
    ```
        - Terminal output of shows server address. Cmd or Ctl click http location to open preview server in browser. Example Server address message... 
        ```
        Server address: http://0.0.0.0:4100/teacher/
        ```

        - Save on ipynb or md activiates "regeneration". Refresh browser to see updates. Example terminal message...
        ```
        Regenerating: 1 file(s) changed at 2023-07-31 06:54:32
            _notebooks/2024-01-04-cockpit-setup.ipynb
        ```

        - Note, Terminal message are generated from background processes.  Click return or enter to obtain prompt and use terminal as needed for other tasks.  Alway return to root of project `cd ~/vscode/teacher` for all "make" actions. 
        

    - Stop preview server, leaves constructed files in project for your review
    ```bash
    make stop
    ```

    - Stop server and "clean" constructed files, best choice when renaming files to clean potential duplicates in constructed files.
    ```bash
    make clean
    ```

    - Test notebook conversions, best choice to see if IPYNB conversion is acting up
    ```bash
    make convert
    ```
    