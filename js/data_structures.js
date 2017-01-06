var colors = ["Blue", "Green", "Pink", "Red"];
var names = ["Ed", "Sally", "Rodger", "Billy"];

colors.push("Turquoise");
names.push("Pegasus");

var pairs = {};
for (var i = 0; i < colors.length; i++) {
  pairs[names[i]] = colors[i];
}

console.log(pairs);

function Car(color, year, isRunning) {
  this.color = color;
  this.year = year;
  this.isRunning = isRunning;
  this.revEngine = function() { console.log("*revs engine*"); }
}

 var car1 = new Car("red", 2016, true);
 console.log(car1);
 car1.revEngine();
 console.log(car1.color);
 console.log(car1.year);

 var car2 = new Car("blue", 2006, false);
 console.log(car2);

 var car3 = new Car("green", 2010, true);
 console.log(car3);
