function matrixShow(){
  const banner = document.querySelector(".banner-curiculum");
  if (banner) {
    const matrix = document.getElementsByClassName("matrix");
    console.log(matrix);
    const arrayNumLetter = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a','A','b','B','c','C','d','D','e','E','f','F','g','G','h','H','i','I','j','J','k','K','l','L','m','M','n','N','o','O','p','P','q','Q','r','R','s','S','t','T','u','U','v','V','w','W','x','X','y','Y','z','Z','Б','Г','Д','Ж','З','И','К','Л','П','Р','Т','У','Ф','Х','Ц','Ч','Щ','Ы','Э','Ю','あ','か','さ','た','な','は','ま','や','ら','わ','が','ざ','だ','ば','ぱ','ザ','ダ','バ','パ'];
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
      matrix[i].style.animationDelay = Math.random() * (matrix.length / 4) + 's';
      matrix[i].style.transform = `translateZ(${Math.floor(Math.random() * window.innerWidth) + "px"})`;
      matrix[i].innerHTML = shuffleStrings();
    }

    function init(){
      index.className = "loaded";
    }

    function desinit(){
      clearInterval(myInterval);
      index.remove();
    }

    setTimeout(init, 1000);

    setTimeout(desinit, 6000);

    const myInterval = setInterval(function () {
      for(let i = 0; i < s_string.length; i++) {
        matrix[randomized()].innerHTML = sliced() + shuffleStrings();
      }
    }, 100);
  }
}

export { matrixShow };
