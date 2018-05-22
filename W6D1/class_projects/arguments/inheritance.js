Function.prototype.inherits = function (func) {
  fn = this;

  function Surrogate() {}
  Surrogate.prototype = func.prototype;
  fn.prototype = new Surrogate();
  fn.prototype.constructor = fn;

};


function MovingObject(color, speed, size) {
  this.color = color;
  this.speed = speed;
  this.size = size;

  this.goFast = function () {
    console.log(`I'm going ${this.speed}mph!!`);
  };

}

function Ship(color, speed, size, material) {
  MovingObject.call(this, color, speed, size);
  this.material = material;

  this.myShip = function () {
    console.log(`I'm made of ${this.material}, and i'm ${this.color}`);
  };
}


function Astroid(color, speed, size, planet) {
  MovingObject.call(this, color, speed, size);
  this.planet = planet;
  this.myPlanet = function () {
    console.log(`I came from ${this.planet}`);
  };
}


Function.prototype.inherits = function (func) {
  fn = this;
  fn.prototype = Object.create(func.prototype);
  fn.prototype.constructor = fn;
};
