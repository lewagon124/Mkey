function splitScroll(){
  const controller = new ScrollMagic.Controller();

  new ScrollMagic.Scene({
    duration: '200%',
    triggerElement: '.imagetitle',
    triggerHook: 0
  })
  .setPin('.imagetitle')
  .addIndicators()
  .addTo(controller);
}

splitScroll();
