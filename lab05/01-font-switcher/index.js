var clicks = 0;

const makeBigger = () => {
   clicks++;
   if (clicks <= -2) {
      document.querySelector("h1").style.fontSize = "1em"
   } else if (clicks == -1) {
      document.querySelector("h1").style.fontSize = "1.5em"
   } else if (clicks == 0) {
      document.querySelector("h1").style.fontSize = "2em"
   } else if (clicks == 1) {
      document.querySelector("h1").style.fontSize = "2.5em"
   } else if (clicks >= 2) {
      document.querySelector("h1").style.fontSize = "3em"
   }
};

const makeSmaller = () => {
   clicks--;
   if (clicks <= -2) {
      document.querySelector("h1").style.fontSize = "1em"
   } else if (clicks == -1) {
      document.querySelector("h1").style.fontSize = "1.5em"
   } else if (clicks == 0) {
      document.querySelector("h1").style.fontSize = "2em"
   } else if (clicks == 1) {
      document.querySelector("h1").style.fontSize = "2.5em"
   } else if (clicks >= 2) {
      document.querySelector("h1").style.fontSize = "3em"
   }
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

