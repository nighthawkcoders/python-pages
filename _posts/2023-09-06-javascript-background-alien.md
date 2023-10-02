---
layout: default
title: Alien World Background
description: Use JavaScript without external libararies to animate Mario moving across screen, OOP style.
categories: [C5.0, C7.0, C7.6]
image: /images/alien_planet.jpg
courses: { csse: {week: 10} }
type: ccc
---

{% assign alienPlanetFile = site.baseurl | append: page.image %}
{% assign WIDTH = 4192 %}
{% assign HEIGHT = 2048 %}

<canvas id="alienWorld"></canvas>

<script>
  const canvas = document.getElementById("alienWorld");
  const ctx = canvas.getContext('2d');

  const ASPECT_RATIO = {{WIDTH}} / {{HEIGHT}};
  const maxWidth = window.innerWidth;
  const maxHeight = window.innerHeight;

  let canvasWidth, canvasHeight;

  // Calculate the canvas dimensions based on the window size and the image's aspect ratio
  if (maxWidth / ASPECT_RATIO <= maxHeight) {
    canvasWidth = maxWidth;
    canvasHeight = canvasWidth / ASPECT_RATIO;
  } else {
    canvasHeight = maxHeight;
    canvasWidth = canvasHeight * ASPECT_RATIO;
  }

  // Set canvas dimensions and scale it using CSS
  canvas.width = {{WIDTH}};
  canvas.height = {{HEIGHT}};
  canvas.style.width = `${canvasWidth}px`;
  canvas.style.height = `${canvasHeight}px`;

  // Center the canvas both horizontally and vertically
  const canvasLeft = (maxWidth - canvasWidth) / 2;
  const canvasTop = (maxHeight - canvasHeight) / 2;
  canvas.style.position = 'absolute';
  canvas.style.left = `${canvasLeft}px`;
  canvas.style.top = `${canvasTop}px`;

  var gameSpeed = 10;
  class Layer {
    constructor(image, speedRatio) {
      this.x = 0;
      this.y = 0;
      this.width = {{WIDTH}};
      this.height ={{HEIGHT}};
      this.image = image
      this.speedRatio = speedRatio
      this.speed = gameSpeed * this.speedRatio;
      this.frame = 0;
    }
    update() {
      this.x = (this.x - this.speed) % this.width;
      if (this.x <= -this.width) {
        this.x = 0;
      }
    }
    draw(){
      ctx.drawImage(this.image, this.x, this.y);
    }
  }

  const backgroundImg = new Image();
  backgroundImg.src = '{{alienPlanetFile}}';
  var backgroundObj = new Layer(backgroundImg, 0.5)

  function background() {
    backgroundObj.update();
    backgroundObj.draw();
    requestAnimationFrame(background);
  }
  background();

</script>
