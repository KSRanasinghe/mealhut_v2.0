/*PAGE LOADER*/
const spinnerWrapperEl = document.querySelector(`.spinner-wrapper`);
window.addEventListener(`load`, (e) => {
  spinnerWrapperEl.classList.add("fade-out");

  setTimeout(() => {
    spinnerWrapperEl.style.display = "none";
  }, 600);
});
