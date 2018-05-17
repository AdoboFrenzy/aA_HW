// isSubstring
// Input
//
// A String, called searchString.
// A String, called subString.
// Output: A Boolean. true if the subString is a part of the searchString.
//
// > isSubstring("time to program", "time")
// true
//
// > isSubstring("Jump for joy", "joys")
// false
//
// ---------------------------------------------------------------------//

const isSubstring = (string, substring) => {
  console.log(string.includes(substring));
}
  
