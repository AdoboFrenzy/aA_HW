function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
// const Suzzy = new Cat ();
const Noodles = new Dog ();



// methods - I typed in "node cat_dog.js" to run these

Noodles.chase(Markov);
Noodles.chase.call(Markov, Noodles);
// Noodles.chase;
Noodles.chase.apply(Markov, [Noodles]);
Noodles.chase.apply(Noodles, [Markov]);
