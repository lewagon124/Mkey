import "bootstrap";
function validate() {
  const searchform = document.querySelector("#search-bar")

  if (searchform) {
    searchform.addEventListener("submit",(event) => {
      var check = document.querySelector("#search-bar").value;

      if (check === null || check === '') {
        event.preventDefault();
      };
    });
  }
}

validate();
