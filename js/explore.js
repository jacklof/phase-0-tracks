/*

Function: reverse(str)
- Create an empty array of the size of str length
- Iterate through the letters of str
- For each index, assign the empty array indexes to
the difference of the length of str and the current
index of the iteration
- Return the array of reversed letters as a joined string

*/

function reverse(str) {
  var reverse = [str.length];
  for (var i = 0; i < str.length; i++) {
    reverse[str.length - 1 - i] = str[i];
  }
  return reverse.join("");
}

console.log(reverse("hello world"));
