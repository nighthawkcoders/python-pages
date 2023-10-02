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
{% assign WIDTH = 8000 %}
{% assign HEIGHT = 4000 %}


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

  class Layer {
    constructor(image, speed) {
      this.x = 0;
      this.y = 0;
      this.width = {{WIDTH}};
      this.height ={{HEIGHT}};
      this.speed = speed;
    }
    update(){
      this.x == this.speed;
    }
    draw(){
      ctx.drawImage(this.image, this.x, this.y);
    }
  }
  
  // constant variables used for background
  const CANVAS_WIDTH = canvas.width = 8000;
  const CANVAS_HEIGHT = canvas.height = 4000;

  const backgroundLayer = new Image();
  backgroundLayer.src = '{{alienPlanetFile}}';

  var x = 0;
  var speed = 5;
  function background() {
    ctx.drawImage(backgroundLayer, x, 0);
    requestAnimationFrame(background);
    x -= speed;
  }
  background();

</script>
