var navbarBG = document.querySelector(".navbar-lewagon");
navbarBG.style.position = "fixed";
navbarBG.style.background = "rgba(251, 205, 119,0)";

window.addEventListener("scroll", function() {
  let offset = window.pageYOffset;
  var navbarBG = document.querySelector(".navbar-lewagon");
  navbarBG.style.background= `rgba(251, 205, 119,${offset/window.innerHeight})`;
  })
