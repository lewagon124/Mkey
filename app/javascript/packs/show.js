console.log("chen show");
function splitScroll(){
  const controller = new ScrollMagic.Controller();

  new ScrollMagic.Scene({
    duration: '200%',
    triggerElement: '.about-title',
    triggerHook: 0
  })
  .setPin('.about-title')
  .addIndicators()
  .addTo(controller);
}

splitScroll();

// insert js from https://codepen.io/kskhr/pen/pRwKjg

// image gallery
// init the state from the input
const checkboxSelection = () => {
  // $(".image-checkbox").each(function () {
  //   if ($(this).find('input[type="checkbox"]').first().attr("checked")) {
  //     $(this).addClass('image-checkbox-checked');
  //   }
  //   else {
  //     $(this).removeClass('image-checkbox-checked');
  //   }
  // });

  // sync the state to the input
  $(".image-checkbox").on("click", function (e) {
    $(this).toggleClass('image-checkbox-checked');
    var $checkbox = $(this).find('input[type="checkbox"]');
    $checkbox.prop("checked",!$checkbox.prop("checked"))

    e.preventDefault();
  });
}

window.checkboxSelection = checkboxSelection;

checkboxSelection();

const setupDynamicPriceForCartItemsForm = () => {
  const addCartItemsForm = document.querySelector(".add-cart-items-form")

  if (addCartItemsForm) {
    document.querySelectorAll(".image-checkbox").forEach((check) => {
      check.addEventListener("click", () => {
        calculateAndDisplayCartItemPrice();
      });
    });
  }
}

const calculateAndDisplayCartItemPrice = () => {
  const array = Array.from(document.querySelectorAll(".image-checkbox-checked > input"));
  const result = array.reduce((sum, input) => sum + parseFloat(input.dataset.priceCents), 0);
  const formattedResult = new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(result)
  document.querySelector(".cart-item-amount").innerHTML = formattedResult;
}

window.setupDynamicPriceForCartItemsForm = setupDynamicPriceForCartItemsForm;

setupDynamicPriceForCartItemsForm();
// slow the video
var videos = document.querySelectorAll(".video-fluid")

videos.forEach(video => {
  video.playbackRate = 0.6
})
