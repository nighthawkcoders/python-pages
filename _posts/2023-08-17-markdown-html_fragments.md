---
toc: true
layout: post
title: Markdown Student Page
description: JavaScript, HTML, and CSS are coding lagnuages used by the GitHub Pages system. Using these languages enables student developer to add functionality to their GitHub pages site.
categories: [1.B, C7.0]
courses: { csse: {week: 0}, csp: {week: 0}, csa: {week: 0} }
categories: [C4.3, C5.0]
type: ccc
---

## HTML Fragments and Markdown
Building an entire frontend web application requires HTML, CSS, and JavaScript. HTML is responsible for the content, CSS adds styling to the web page, and JavaScript adds functionality and interactivity.

In GitHub Pages, Jekyll serves as the build framework. It takes our choice of theme specified in the `_config.yml` file, along with our Markdown, HTML, and notebook files, to construct a complete static website. A significant portion of the frontend design work has already been done for users through the selection and use of a theme.

Jekyll converts Markdown (.md) files into HTML. Behind the scenes of GitHub Pages, Jekyll and Liquid build and programmatically construct each Markdown file into a specific web page. Markdown provides a straightforward way to start with GitHub Pages development. In a Markdown file, you can exclusively use Markdown syntax or incorporate HTML, CSS, and JavaScript based on your expertise and experience.

### Review these Fragments
> The remainder of this document will describe and show code fragments to get the student developer ready for coding and commiting changes to GitHub.
#### GitHub Pages index.md
In GitHub Pages you can define code in Markdown. The index.md uses markdown to define a page about CompSci courses at Del Norte High School.

    - Markdown fragment. The markdown fragment is written by the developer and is an example of how to start a home page using Markdown.

    ```markdown
    ## Build your Home Page here 
    # Investing in your Technical Future
    > Explore the Computer Science Pathway at Del Norte High School and invest in your technical skills. All Del Norte CompSci classes are designed to provide a real-world development experience. Class time includes tech talks (lectures), peer collaboration, communication with teachers, critical thinking while coding, and creativity in projects. Grading is focused on time invested, participation with peers, and engagement in learning.
    - Introduction to concepts and requirements by the teacher
    - Project-based learning with teacher support
    - Peer communication and collaboration
    - Coding, developer operations, and critical thinking
    - Creativity, research, and utilizing ChatGPT
    - Class work with approximately 2-3 hours of homework per week

    ![csse]({{site.baseurl}}/images/ccr.png)
    ```
    - HTML conversion.  The HTML conversion of the Markdown fragment produced by GitHub Pages using Jekyll. This is programmatically converted from Markdown to HTML.

    ```html
    <div class="language-markdown highlighter-rouge"><div class="highlight"><pre class="highlight"><code>  
    ## Build your Home Page here 
    # Investing in your Technical Future
    <span class="gt">  &gt; Explore the Computer Science Pathway at Del Norte High School and invest in your technical skills. All Del Norte CompSci classes are designed to provide a real-world development experience. Class time includes tech talks (lectures), peer collaboration, communication with teachers, critical thinking while coding, and creativity in projects. Grading is focused on time invested, participation with peers, and engagement in learning.</span>
    <span class="p">  -</span> Introduction to concepts and requirements by the teacher
    <span class="p">  -</span> Project-based learning with teacher support
    <span class="p">  -</span> Peer communication and collaboration
    <span class="p">  -</span> Coding, developer operations, and critical thinking
    <span class="p">  -</span> Creativity, research, and utilizing ChatGPT
    <span class="p">  -</span> Class work with approximately 2-3 hours of homework per week

    !<span class="p">[</span><span class="nv">csse</span><span class="p">](</span><span class="sx">/teacher/images/ccr.png</span><span class="p">)</span>
    </code></pre></div>    
    </div>
    ```

#### Images
In GitHub Pages you can insert images in HTML or Markdown.  The Teacher finds \<img\> easier to work with for embedding links when trying to control size.  This example shows Markdown syntax for embedding images, but students can also use HTML syntax with the <img> tag.
- Lookup !\[\]\(\) syntax for images in markdown guides
- See index.md for "img" usage


#### Links
HTML contains an ```<href>``` tag to create links. Students can use either HTML or Markdown syntax for links.
- Look up HTML \<href\> or Markdown \[\]\(\) syntax.  These should become easy and familiar.


### Web Page Layout
A complete HTML Web Application is typically made off of a Layout and a series of Fragments (sometimes called templates).  
- The design of GitHub pages allows us to change themes with the _config.yml file key/value, change the value to a [supported theme](https://pages.github.com/themes/).  Here is a portion of the _config.yml, the ```#``` is a comment symbol.  Add a comment to midnight line, uncomment dinky line to try a new theme. Repeate process until you find something you like.  

```yml
# theme requirements
remote_theme: pages-themes/midnight@v0.2.0
# remote_theme: pages-themes/dinky@v0.2.0
# remote_theme: pages-themes/minimal@v0.2.0
# remote_theme: pages-themes/hacker@v0.2.0
# remote_theme: pages-themes/cayman@v0.2.0
# remote_theme: pages-themes/time-machine@v0.2.0
plugins:
- jekyll-remote-theme
```
- Extensive customization of CSS may require advanced knowledge and can be time-consuming for beginners. I have observed many Students spending  <mark>to much of their time writing custom CSS </mark>.  It is better, for now, to learn to extend or change a GitHub theme and work with fragments of Markdown or HTML.


## Hacks
At the end of this week you should select your theme and start customizing your page. 
- Students should select a theme from the available options in the _config.yml file and start customizing their page accordingly.
- Try altering index.md with image and links according to some of your personal interests, or make an outline for learning GitHub Pages. 
