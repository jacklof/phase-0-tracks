console.log("script loaded");

function addBorder(event) {
  if (event.type == "mouseover") {
    event.target.style.border = "1px solid red";
  } else {
    event.target.style.border = "";
  }
}

var pic = document.getElementById("glider-image");
pic.style.width = "256px";
pic.style.height = "auto";
pic.addEventListener("mouseover", addBorder);
pic.addEventListener("mouseout", addBorder);
