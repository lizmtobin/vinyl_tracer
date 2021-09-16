const six = document.querySelector(".six-degrees");
const js_tag = document.querySelector(".flag");


six.addEventListener("click", function() {
    js_tag.classList.toggle("hidden");
    fadeIn(el);
});




// fade out

function fadeOut(el){
  el.style.opacity = 1;

  (function fade() {
    if ((el.style.opacity -= .1) < 0) {
      el.style.display = "none";
    } else {
      requestAnimationFrame(fade);
    }
  })();
}

// fade in

function fadeIn(el, display){
  el.style.opacity = 0;
  el.style.display = display || "block";

  (function fade() {
    var val = parseFloat(el.style.opacity);
    if (!((val += .005) > 1)) {
      el.style.opacity = val;
      requestAnimationFrame(fade);
    }
  })();
}

var el = document.querySelector('.js-fade');

// fadeOut(el);
// fadeIn(el);
// fadeIn(el, "inline-block");
