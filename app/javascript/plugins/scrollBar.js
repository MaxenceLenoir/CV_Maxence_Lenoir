const scrollBarEffect = () => {
  const progress = document.getElementById('progress-bar');
  if (progress) {
    const totalHeight = document.body.scrollHeight - window.innerHeight;
    window.onscroll = function(){
      let progressHeight = (window.pageYOffset / totalHeight) * 100;
      progress.style.height = progressHeight + '%';
    }
  }
}

export { scrollBarEffect };