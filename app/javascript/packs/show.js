const six = document.querySelector(".six-degrees");
const toggleCards = document.querySelector(".flag");


six.addEventListener("click", function() {
    toggleCards.classList.toggle("hidden");
    const fadeInCards = document.querySelectorAll(".js-fade");
    if(fadeInCards && !toggleCards.classList.contains("hidden")) {
      fadeInCards.forEach(tag => {
        tag.style.opacity = 0;
      });
      fadeIn(fadeInCards[0]);
    }
  });



function fadeIn(el){

  (function fade() {
    let val = parseFloat(el.style.opacity);
    if (!((val += .05) > 1)) {
      el.style.opacity = val;
      requestAnimationFrame(fade);
    } else {
      const nextElement = el.nextElementSibling;
      if(nextElement){
        fadeIn(nextElement)
      }
    }
  })();
}




