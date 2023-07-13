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
Building an entire frontend Web Application requires HTML, CSS and JavaScript.  In GitHub Pages, a lot of the frontend design work has been done for the user of the framework by selecting and using a theme.   Behind the scenes of GitHub Pages, Jekyll and Liquid build and programmatically construct each page specific to the fragments in a specific page.  

Jekyll, is the build framework, it takes our choice of theme in our _config.yml file, along with our Markdown, HTML, Notebook files to build a complete static website.  In GitHub Pages, Jekyll will construct HTML from a language called Markdown (.md files).  Markdown is a very simple way to get started with GitHub development.


### Review these Fragments
#### GitHub Pages index.md
In GitHub Pages you can define code in Markdown. The index.md uses markdown to define a page about CompSci courses at Del Norte High School.

    - Markdown fragment written by Developer

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
    - HTML conversion of fragment produced by GitHub pages using Jekyll

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
In GitHub Pages you can insert images in HTML or Markdown.  The Teacher finds \<img\> easier to work with for embedding links when trying to control size.  But, the example shown uses markdown.
- See index.md for "img" usage
- Lookup !\[\]\(\) syntax for images in markdown guides


#### Links
Look up \<href\> and \[\]\(\) syntax in both HTML and Markdown.  These should become easy and familiar.


### Web Page Layout
A complete HTML Web Application is typically made off of a Layout and a series of Fragments (sometimes called templates).  
- The design of GitHub pages allows us to change themes with the _config.yml file key/value, change the value to a [supported theme](https://pages.github.com/themes/).
- Students often spend a large portions of their time <mark>writing custom CSS can be counter productive</mark>.  It is better, for now, to learn to extend or change a GitHub theme and work with fragments of Markdown or HTML.


## Hacks
At the end of this week you should select your theme and start customizing your page. 
- Try creating setting up and running a student web page on what you intend to do.
- Try altering _config.yml for a different theme.  This is a great opportunity to explore files and apply meaning, purpose, and function to files.
- Try altering index.md with image and links according to some of your personal interests, or make a plan for learning GitHub Pages. 
