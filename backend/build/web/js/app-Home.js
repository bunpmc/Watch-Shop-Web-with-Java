let iconCart = document.querySelector(".icon-cart");
let body = document.querySelector("body");
let closeCart = document.querySelector(".close");

iconCart.addEventListener("click", () => {
  body.classList.add("showCart");
});
closeCart.addEventListener("click", () => {
  console.log("click");
  body.classList.remove("showCart");
});

const typingText = document.querySelector(".typing-text");

const phrases = ["services", "products", "solutions"];
let phraseIndex = 0;
let letterIndex = 0;
let isDeleting = false;
const typingSpeed = 100; // Speed for typing
const deletingSpeed = 50; // Speed for deleting
const delayBetweenPhrases = 1000; // Pause before switching to the next phrase

function type() {
  const currentPhrase = phrases[phraseIndex];
  if (isDeleting) {
    letterIndex--;
    typingText.textContent = currentPhrase.substring(0, letterIndex);
  } else {
    letterIndex++;
    typingText.textContent = currentPhrase.substring(0, letterIndex);
  }

  let timeout = isDeleting ? deletingSpeed : typingSpeed;

  if (!isDeleting && letterIndex === currentPhrase.length) {
    timeout = delayBetweenPhrases;
    isDeleting = true;
  } else if (isDeleting && letterIndex === 0) {
    isDeleting = false;
    phraseIndex = (phraseIndex + 1) % phrases.length;
  }

  setTimeout(type, timeout);
}

// Start the typing effect
type();

document.addEventListener("DOMContentLoaded", function () {
  var splide = new Splide("#splice_events", {
    perPage: 1,
    rewind: true, //tua lại
    perMove: 1,
    type: "loop",
    wheel: true,
    autoplay: true,
    arrows: false,
  });
  splide.mount();
});

document.addEventListener("DOMContentLoaded", function () {
  var splide2 = new Splide("#splice_bestsellers", {
    perPage: 3,
    rewind: true, //tua lại
    perMove: 1,
    type: "loop",
    wheel: true,
    autoplay: true,
    arrows: false,
  });
  splide2.mount();
});

