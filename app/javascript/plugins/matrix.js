function matrixShow(){
  const banner = document.querySelector(".banner-curiculum");
  if (banner) {
    const matrix = document.getElementsByClassName("matrix");
    console.log(matrix);

    const nums = "0123456789"
    const letters = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
    const rus = "БГДЖЗИКЛПРТУФХЦЧЩЫЭЮ"
    const jap = "あかさたなはまやらわがざだばぱザダバパ"
    const arrayNumLetter = [nums, letters, rus, jap];
    const s_string = arrayNumLetter.join('');

    const randomized = () => Math.floor(Math.random() * s_string.length);

    const shuffleStrings = () => arrayNumLetter.sort(() => randomized() - 0.5).join('');

    const sliced = () => {

      let random1 = randomized();
      const prandom = random1;
      let random2 = randomized();
      if (random1 < random2){
        random1 = random2;
        random2 = prandom;
      }
      return shuffleStrings().slice(random1,random2);
    }

    const index = document.querySelector('#index');
    const matrixbar = `<div class=matrix></div>`;

    for (let i = 0; i < s_string.length; i++) {
      index.innerHTML += matrixbar;
      matrix[i].style.opacity = (Math.random() + .3) * 1;
      matrix[i].style.animationDelay = Math.random() * (matrix.length / 2) + 's';
      matrix[i].style.transform = `translateZ(${Math.floor(Math.random() * window.innerWidth) + "px"})`;
      matrix[i].innerHTML = shuffleStrings();
    }

    function init(){
      index.className = "loaded";
    }

    setTimeout(init, 2000);

    setInterval(function () {
      for(let i = 0; i < s_string.length; i++) {
        matrix[randomized()].innerHTML = sliced() + shuffleStrings();
      }
    }, 300);
  }
}

export { matrixShow };