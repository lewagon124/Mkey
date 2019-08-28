import "bootstrap";
function validate() {
  const searchform = document.querySelector(".searchform")

  if (searchform) {
    searchform.addEventListener("submit",(event) => {
      var check = document.querySelector(".search").value;

      if (check === null || check === '') {
        event.preventDefault();
      };
    });
  }
}

validate();
