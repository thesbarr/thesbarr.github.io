(function () {
  var form = document.querySelector(".contact-form");
  if (!form) {
    return;
  }

  var submitButton = form.querySelector(".js-submit-button");
  var status = form.querySelector(".contact-form-status");
  if (!submitButton) {
    return;
  }

  form.addEventListener("submit", function () {
    submitButton.disabled = true;
    submitButton.textContent = "Sending...";
    submitButton.setAttribute("aria-busy", "true");

    if (status) {
      status.textContent = "Sending your message...";
    }
  });
})();
