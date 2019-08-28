console.log("hello");

// window.location

const signin = document.querySelector("#button");
signin.addEventListener("click",()=>{
  document.querySelector("#modal").style.display = "block";
});

const background = document.querySelector("#background");
background.addEventListener("click",()=>{
  const modal = document.querySelector("#modal")
  modal.style.display = "none";
})


