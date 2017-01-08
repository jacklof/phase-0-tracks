/*
Define a function that finds the longest string in an array of strings
  Input: an array of strings
  Steps:
    - Create a string var to be returned that it is equal to the value of the of the given array's first index
    - Iterate through a for loop, starting with an index value of 1 and ending with index of array's length - 1
      - If the given array's value at the current index is longer than the return string, set the return string to that value
      - Otherwise, move on to the next index
  Output: the longest string of the given array
*/
function getLongestString(array) {
  var rstr = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i].length > rstr.length) {
      rstr = array[i];
    }
  }
  return rstr;
}

/*
Define a function that takes two objects and checks to see if they share at least one key-value pair
  Input: an object, another object
  Steps:
    - Iterate through one objects keys
      - If the particular key is also a key in the second object, compare the values of those keys from their respective object
        - If the values are the same, return true
    - If there has been no match, return false
  Output: boolean
*/


console.log(getLongestString(["long phrase", "longest phrase", "longer phrase"]));
console.log(getLongestString(["alpha", "beta", "gamma"]));
console.log(getLongestString(["one potato", "two potato", "three potato", "four"]));
