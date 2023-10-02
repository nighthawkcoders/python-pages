---
layout: default
title: Alien World
description: Use JavaScript without external libararies to animate Mario moving across screen, OOP style.
categories: [C5.0, C7.0, C7.6]
image: /images/alien_planet.jpg
courses: { csse: {week: 6}, csp: {week: 13}, csa: {week: 3} }
type: ccc
---

{% assign alienPlanetFile = site.baseurl | append: page.image %}
{% assign WIDTH = 2000 %}
{% assign HEIGHT = 2000 %}


<style>

  #alienWorld {
    position: absolute;
    border: 3px solid white;
    width {{WIDTH}}px;
    height {{HEIGHT}}px;
    transform: translate(-50%, -50%);
    top 50%;
    left 50%;
  }
</style>

<canvas id="alienWorld"></canvas>

<script>
  const canvas = document.getElementById("alienWorld");
  const ctx = canvas.getContext('2d');
  var gameSpeed = 3;

  class Layer {
    constructor(image, speedRatio) {
      this.x = 0;
      this.y = 0;
      this.width = {{WIDTH}};
      this.height ={{HEIGHT}};
      this.image = image
      this.speedRatio = speedRatio
      this.speed = gameSpeed * this.speedRatio;
    }
    update(){
      this.x -= this.speed;
    }
    draw(){
      ctx.drawImage(this.image, this.x, this.y);
    }
  }
  
  // constant variables used for background
  const CANVAS_WIDTH = canvas.width = {{WIDTH}};
  const CANVAS_HEIGHT = canvas.height = {{HEIGHT}};

  const backgroundImg = new Image();
  backgroundImg.src = '{{alienPlanetFile}}';
  var backgroundObj = new Layer(backgroundImg, 1)

  function background() {
    backgroundObj.update();
    backgroundObj.draw();
    requestAnimationFrame(background);
  }
  background();

</script>
