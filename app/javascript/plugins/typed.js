import Typed from 'typed.js';
import I18n from 'i18n-js';

const loadDynamicBannerText = () => {
  if (document.querySelector('#banner-typed-text')) {
    const monitor = document.querySelector(".monitor");
    monitor.classList.add("d-flex", "align-items-center", "justify-content-center")
    new Typed('#banner-typed-text', {
      strings: ["Maxence Lenoir", I18n.t('js.job')],
      typeSpeed: 75,
      loop: true
    });
  };
}

export { loadDynamicBannerText };