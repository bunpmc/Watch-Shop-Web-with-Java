document.getElementById("showRegister").addEventListener("click", function () {
  document.querySelector(".form-container").classList.add("show-register");
});

document.getElementById("showLogin").addEventListener("click", function () {
  document.querySelector(".form-container").classList.remove("show-register");
});
