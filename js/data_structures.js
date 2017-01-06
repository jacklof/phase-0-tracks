var colors = ["Blue", "Green", "Pink", "Red"];
var names = ["Ed", "Sally", "Rodger", "Billy"];

colors.push("Turquoise");
names.push("Pegasus");

var pairs = {};
for (var i = 0; i < colors.length; i++) {
  pairs[names[i]] = colors[i];
}

console.log(pairs);
