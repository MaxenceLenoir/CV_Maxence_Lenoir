import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')) {
    const monitor = document.querySelector(".monitor");
    monitor.classList.add("d-flex", "align-items-center", "justify-content-center")
    new Typed('#banner-typed-text', {
      strings: ["Maxence Lenoir", "Developpeur Full-Stack"],
      typeSpeed: 75,
      loop: true
    });
  };
}

export { loadDynamicBannerText };