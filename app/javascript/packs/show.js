const six = document.querySelector(".six-degrees");
const js_tag = document.querySelector(".flag");


six.addEventListener("click", function() {
    js_tag.classList.toggle("hidden");

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

