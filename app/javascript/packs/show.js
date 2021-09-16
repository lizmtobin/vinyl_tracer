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
=======

});

let opacity =0;
let intervalID=0;
function fadeOut()
  {
    intervalID=setInterval(hide,20);
  }
function fadeIn()
  {
    // intervalID=setInterval(show,20);
    // console.log('test')
  }
function show()
  {
    let img = document.getElementById("img1");
    opacity = Number(window.getComputedStyle(img).getPropertyValue("opacity"));
    if(opacity<1)
    {
      opacity=opacity+0.1;
      img.style.opacity=opacity;
      console.log(opacity);
    }
    else
    {
      clearInterval(intervalID);
    }
  }
function hide()
  {
    let img = document.getElementById("img1");
    opacity = Number(window.getComputedStyle(img).getPropertyValue("opacity"));
    if(opacity>0)
    {
      opacity=opacity-0.1;
      img.style.opacity=opacity;
      console.log(opacity);
    }
    else
    {
      clearInterval(intervalID);
    }
  }
const test = document.querySelector(".btnAdd");
test.addEventListener("click", function() {
  intervalID=setInterval(show(),20);
  console.log('test')
});


