document.addEventListener("turbo:load", function() {
  const tabLinks = document.querySelectorAll('.nav-link');

  tabLinks.forEach(function (tabLink) {
    tabLink.addEventListener('click', function () {
      const tabId = this.dataset.tabId;
      document.querySelector(".active").classList.remove("active")
      tabLinks[tabId].classList.add("active")
      const tabContents = document.querySelectorAll('.tab-content');

      tabContents.forEach(function (tabContent) {
        tabContent.style.display = 'none';
      });

      document.getElementById(tabId).style.display = 'block';
    });
  });
})