function changeBorder(event) {
  if (event.type == "mouseover") {
    event.target.style.border = "2px red solid"
  } else if (event.type == "mouseout") {
    event.target.style.border = ""
  }
}

var element = document.getElementById("test-id")
element.addEventListener("mouseover", changeBorder)
element.addEventListener("mouseout", changeBorder)
