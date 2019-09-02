<<<<<<< HEAD
=======


>>>>>>> 2064137986e1afce509f38ad440c9b66954dc02f
window.addEventListener("scroll", function() {
  let offset = window.pageYOffset;

  // console.log(offset);
  var navbarBG = document.querySelector(".navbar-lewagon");
  // console.log(navbarBG);
  navbarBG.style.background= `rgba(251, 205, 119,${offset/window.innerHeight})`;

  //   var parallax = document.getElementsByClassName("mission");
  //   parallax[0].style.backgroundPositionY = offset * 0.1 - 200 + "px";
  //
  // var parallaxCar = document.getElementsByClassName("mission-car");
  // parallaxCar[0].style.marginLeft= (window.pageYOffset/1.6)-500 + 'px';
  // console.log((window.pageYOffset/ 4) + 'px');
  })
