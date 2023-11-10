---
toc: false
comments: false
layout: post
title: Innovation, CSSE Project
permalink: /oop/home
description: Convert Mario to Object Oriented Programming (OOP)
type: collab
courses: { csse: {week: 13} }
---

{% include nav_oop.html %}

## OOP Conversion

Objective of project is to covert functionalities of "Imperative Style" Mario Game to "Object Oriented Programming" paradigm.  The assets and logic of functions can be reused as we improve to an OOP design.

### Game Environment

The GameEnv holds states and objects of the game including GameObjects, Screen extents, and Current GameLevel.

```javascript
class GameEnv {
    static gameObjects = [];
    static height;
    static width;
    static currentLevel;

    // sets up initial environment settings, like width and heigh
    static initialize(width, height) {
        this.width = width;
        this.height = height;
        // Additional initialization logic
    }

    // initializes the game by creating the first level and loading its elements
    static startGame() {
        // Initialize or load the first level
        this.currentLevel = new Level();
        this.currentLevel.load(); // or generate
        // Additional game start logic
    }

    static update() {
        // Update game state, including all game objects
        for (const gameObject of this.gameObjects) {
            gameObject.update();
            gameObject.draw();
        }
    }

}
```

### GameObject

Common attributes, methods, prototype methods for all objects in the Game.

```javascript
class GameObject {
  constructor(canvas, image, speedRatio) {
    this.x = 0;
    this.y = 0;
    this.frame = 0;
    this.canvas = canvas;
    this.ctx = canvas.getContext('2d');
    this.image = image;
    this.width = image.width;  // Image() width (meta data)
    this.height = image.height; // Image() height
    this.aspect_ratio = this.width / this.height;
    this.speedRatio = speedRatio;
    this.speed = GameEnv.gameSpeed * this.speedRatio;
    this.invert = true;
    this.collisionWidth = 0;
    this.collisionHeight = 0;
    this.collisionData = {};
    GameObject.gameObjects.push(this); 
  }

  destroy() { 
    const index = GameObject.gameObjects.indexOf(this);
    if (index !== -1) {
        // Remove the canvas from the DOM
        this.canvas.parentNode.removeChild(this.canvas);
        GameObject.gameObjects.splice(index, 1);
    }
  }

  update() {  }
  draw() { }
  size() {  }
  isCollision(object) {  }
  collisionAction(object) {  }
  handleCollision(object) {
    if (this.isCollision(object)) {
        this.collisionAction(object);
    }
  }
}
```

### Player

Create a class specifically for the player character, extending the GameObject class. Include properties such as player speed, jump height, and health.  Implement methods for player-specific actions like jumping, attacking, etc.

```javascript
class Player extends GameObject {
    constructor(x, y, width, height) {
        super(x, y, width, height);
        this.speed = 5;
        this.jumpHeight = 10;
        this.health = 100;

        // Set up event listeners for user input
        document.addEventListener('keydown', this.handleKeyDown.bind(this));
        document.addEventListener('keyup', this.handleKeyUp.bind(this));
    }

    handleKeyDown(event) {
        // Handle key down events (e.g., move left or right, jump)
        switch (event.key) {
            case 'ArrowLeft':
                this.moveLeft();
                break;
            case 'ArrowRight':
                this.moveRight();
                break;
            case 'Space':
                this.jump();
                break;
            // Handle other keys as needed
        }
    }

    handleKeyUp(event) {
        // Handle key up events (e.g., stop moving)
        switch (event.key) {
            case 'ArrowLeft':
            case 'ArrowRight':
                this.stopMoving();
                break;
            // Handle other keys as needed
        }
    }

    moveLeft() { /* Implement left movement logic */ }
    moveRight() { /* Implement right movement logic */ }
    stopMoving() { /* Implement stop movement logic */ }
    jump() { /* Implement jump logic */ }
    attack() { /* Implement attack logic */ }
}
```

### Platform

Create a class for platforms that the player can stand on. Include properties such as width, height, and possibly a type (solid, moving, etc.).

```javascript
class Platform extends GameObject {
    constructor(x, y, width, height) {
        super(x, y, width, height);
    }
    // Additional platform-specific methods or properties
}
```

### Game Level

Store the assets and attributes of the Game at the specfice GameLevel.

```javascript
class GameLevel {
    constructor() {
        this.platforms = []; // Array of platforms in the level
        this.enemies = [];   // Array of enemies in the level
        // Additional level-specific properties
    }

    load() { /* Load level data */ }
    generate() { /* Generate level elements */ }
    // Additional level-specific methods
}
```

### Game State Management

Implement a system to manage different game states (e.g., menu, playing, game over).  This can help organize your game's flow and handle transitions between states.

```javascript
class GameStateManager {
    constructor() {
        this.currentState = "menu"; // Initial state
    }

    changeLevel(newLevel) {
        // Logic for transitioning between states
        await GameInitializer.transitionToLevel(newLevel);
    }
}
```

### Game Initializer

Assist with setup and teardown between levels

```javascript
const GameInitializer = {
    // ... (other init methods)

    async transitionToLevel(newLevel) {
        // Destroy existing game objects
        this.destroyGameObjects();

        // Load images for the new level
        const levelImages = await this.loadLevelImages(newLevel);

        // Initialize the new level with loaded images
        const level = this.initLevel(newLevel, levelImages);
        GameEnv.currentLevel = level;

        // Create new game objects for the new level
        this.createGameObjectsForLevel(level);
    },

    // Destroy all existing game objects
    destroyGameObjects() {
        for (const gameObject of GameObject.gameObjects) {
            gameObject.destroy();
        }
    },

    // Load images specific to the given level
    async loadLevelImages(level) {
        const levelImagePromises = level.imageFiles.map(file => loadImage(file));
        return Promise.all(levelImagePromises);
    },

    // Initialize the level with loaded images
    initLevel(level, levelImages) {
        const initializedLevel = new GameLevel();

        // Initialize and add platforms to the level
        // (similar to what you did in initLevel previously)
        // ...

        return initializedLevel;
    },

    // Create game objects for the given level
    createGameObjectsForLevel(level) {
        // Create game objects based on the level's configuration
        // (similar to what you did in initLevel previously)
        // ...
    }
};
```
