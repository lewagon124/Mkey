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
$('.carousel.carousel-multi-item.v-2 .carousel-item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));

  for (var i=0;i<4;i++) {
    next=next.next();
    if (!next.length) {
      next=$(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
  }
});
