const phoneNumberEffect = () => {
  const phone = document.querySelector('.phone-number');
  if (phone) {
    const icon = document.querySelector('.fa-phone');
    icon.onmouseover = function(){
      phone.style.opacity = 1
    }
    icon.onclick = function(){
      const myPhone = document.createElement("input");
      myPhone.value = "07 61 60 05 52"
      document.body.appendChild(myPhone);
      myPhone.select();
      document.execCommand("copy", false);
      myPhone.remove();
    }
    icon.onmouseleave = function(){
      phone.style.opacity = 0
    }
  }
}

export { phoneNumberEffect };