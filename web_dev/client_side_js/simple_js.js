console.log("script loaded");

function addBorder(event) {

  if (event.type == "mouseover") {
    event.target.style.border = "1px solid red";
  } else if (event.type == "mouseout") {
    event.target.style.border = "";
  }
}

function addText() {

  var paragraph = document.createElement("p");

  var text = document.createTextNode("This is some new text!");
  paragraph.appendChild(text);

  var div = document.getElementById("new-content-div");
  div.appendChild(paragraph);
}

function changeClass() {

  var elements = document.getElementsByClassName("sample-class");
  for (var i = 0; i < elements.length; i++) {
    elements[i].style.border = "2px solid red";
  }
}

var pic = document.getElementById("glider-image");
pic.style.width = "256px";
pic.style.height = "auto";
pic.addEventListener("mouseover", addBorder);
pic.addEventListener("mouseout", addBorder);

var button = document.getElementById("create-list");
button.addEventListener("click", addText);

var button2 = document.getElementById("class-alteration");
button2.addEventListener("click", changeClass);
