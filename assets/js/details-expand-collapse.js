// JavaScript for custom expand/collapse behavior
document.addEventListener("DOMContentLoaded", function () {
    const detailsElements = document.querySelectorAll("details");
    detailsElements.forEach(function (details) {
      const summaryElement = details.querySelector("summary");
  
      summaryElement.addEventListener("click", function () {
        details.toggleAttribute("open");
      });
    });
  });
  