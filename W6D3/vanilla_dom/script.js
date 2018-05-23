document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  // --- your code here!
  const sfFormEl = document.getElementById("sf-form");
  sfFormEl.addEventListener("submit", event => {

    event.preventDefault();

    const sfInputEl = document.getElementById("sf-name");
    const sfName = sfInputEl.value;
    sfInputEl.value = "";
    // input from html form - see lines 34-37 in the html file

    const ul = document.getElementById("sf-places");
    // create an li element
    const li = document.createElement("li");
    // set the text of the li to be the value of the input field
    li.textContent = sfName;

    // insert it as the last item in the ul.
    ul.appendChild(li);
  });

  // adding new photos

  // --- your code here!



});
