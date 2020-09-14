const bannerEffect = () => {
  const banner = document.querySelector(".banner-cv");
  if (banner) {
    for ( let i=1; i<= 2700; i++) {
      banner.insertAdjacentHTML('afterbegin', '<div class="box"></div>');
    }
  }
}

export { bannerEffect }
