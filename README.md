## Teacher Blog site
This site is intended for the development of Teacher content.  This blogging site is built using GitHub Pages [GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site).
- The purpose is to build lessons and distribute across different Computer Science sections (CSSE, CSP, CSA), a pathway that covers 3 years of High School instruction.
- The primary languages and frameworks that are taught are `JavaScript/HTML/CSS`, `Python/Flask`, `Java/Spring`.  Read below for more details.
- In this course, Teacher content is not exclusively developed by Teachers.  In fact, many Students have been invited to develop and publish content into this repository.  Their names will appear as authors on the content which they aided in producing.
- This site has incorporated ideas and has radically modified scripts from the now deprecated [fastpages](https://github.com/fastai/fastpages) repository.
- This site includes assistance and guideance from ChatGPT, [chat.openai.com](https://chat.openai.com/) 

### Courses and Pathway
The focus of the Del Norte Computer Science three-year pathway is `Full Stack Web Development`.  This focus provides a variety of technologies and exposures.  The intention of the pathway is breadth and exposure.
- `JavaScript` documents are focused on frontend development and for entry class into the Del Norte Computer Science pathway.  JavaScript documents and materials are a prerequisites to Python and Java classes.
- `Python` documents are focused on backend development and requirements for the AP Computer Science Principles exam.
- `Java` documents are focused on backend development and requirements for the AP Computer Sciene A exam.
- `Data Structures` materials embedded into JavaScript, Python, or Java documents are focused on college course articulation.

### Resources and Instruction
The materials, such as this README, as well as `Tools`, `DevOps`, and `Collaboration` resources are integral part of this course and Computer Science in general.  Everything in our environment is part of our learning of Computer Science. 
- `Visual Studio Code` is key the code-build-debug cycle editor used in this course, [VSCode download](https://code.visualstudio.com/).  This is an example of a resource, but inside of it it has features for collaboration.
- `Tech Talks`, aka lectures, are intended to be interactive and utilize `Jupyter Notebooks` and Websites.  This is an example of blending instruction and tools together, which in turn provide additional resources for learning.  For instance, deep knowledge on  GitHub Pages and Notebooks are valuable in understanding principles behind Full Stack Development and Data Science. 

## GitHub Pages
All `GitHub Pages` websites are managed on GitHub infrastructure. GitHub uses `Jekyll` to tranform your content into static websites and blogs. Each time we change files in GitHub it initiates a GitHub Action that rebuilds and publishes the site with Jekyll.  
- GitHub Pages is powered by: [Jekyll](https://jekyllrb.com/).
- Publised teacher website: [nighthawkcoders.github.io/teacher](https://nighthawkcoders.github.io/teacher/)

## Preparing a Preview Site 
In all development, it is recommended to test your code before deployment.  The GitHub Pages development process is optimized by testing your development on your local machine, prior to files on GitHub

Development Cycle. For GitHub pages, the tooling described below will create a development cycle  `make-code-save-preview`.  In the development cycle, it is a requirement to preview work locally, prior to doing a VSCode `commit` to git.

Deployment Cycle.  In the deplopyment cycle, `sync-github-action-review`, it is a requirement to complete the development cycle prior to doing a VSCode `sync`.  The sync triggers github repository update.  The action starts the jekyll build to publish the website.  Any step can have errors and will require you to do a review.

### WSL and/or Ubuntu installation requirements
- The result of these step is Ubuntu tools to run preview server.  These procedures were created using [jekyllrb.com](https://jekyllrb.com/docs/installation/ubuntu/)
```bash
# 
# WSL/Ubuntu setup
#
mkdir mkdir vscode
git clone https://github.com/nighthawkcoders/teacher.git
# run script, path vscode/teacher are baked in script
~/vscode/teacher/scripts/activate_ubuntu.sh
#=== !!!Start a new Terminal!!! ===
#=== Continue to next section ===
```

### MacOs installation requirements 
- Ihe result of these step are MacOS tools to run preview server.  These procedures were created using [jekyllrb.com](https://jekyllrb.com/docs/installation/macos/). 

```bash
# 
# MacOS setup
#
mkdir mkdir vscode
git clone https://github.com/nighthawkcoders/teacher.git
# run script, path vscode/teacher are baked in script
~/vscode/teacher/scripts/activate_macos.sh
#=== !!!Start a new Terminal!!! ===
#=== Continue to next section ===
```


### Run Preview Server
- The result of these step is server running on: http://0.0.0.0:4100/teacher/.  Regeneration messages will run in terminal on any save and update site upon refresh.  Terminal is active, press the Enter or Return key in the terminal at any time to see prompt to enter commands.

- Complete installation
```bash
cd ~/vscode/teacher
bundle install
make
```
- Run Server.  This requires running terminal commands `make`, `make stop`, `make clean`, or `make convert` to manage the running server.  Logging of details will appear in terminal.   A `Makefile` has been created in project to support commands and start processes.

    - Start preview server in terminal
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

    - Terminal message are generated from background processes.  Click return or enter to obtain prompt and use terminal as needed for other tasks.  Alway return to root of project `cd ~/vscode/teacher` for all "make" actions. 
        

    - Stop preview server, but leave constructed files in project for your review.
    ```bash
    make stop
    ```

    - Stop server and "clean" constructed files, best choice when renaming files to eliminate potential duplicates in constructed files.
    ```bash
    make clean
    ```

    - Test notebook conversions, best choice to see if IPYNB conversion is acting up.
    ```bash
    make convert
    ```
    