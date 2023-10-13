var menuToggle = document.getElementById("menu-toggle");
var menu = document.getElementById("main-menu");

menuToggle.addEventListener("click", function (event) {
  if (menu.classList.contains("hidden")) {
    menu.classList.remove("hidden");
  } else {
    menu.classList.add("hidden");
  }
  event.stopPropagation();
});

document.addEventListener("click", function (event) {
  if (
    !menuToggle.classList.contains("hidden") &&
    !menu.contains(event.target) &&
    !menuToggle.contains(event.target)
  ) {
    menu.classList.add("hidden");
  }
});
