const commandDrink = document.getElementsByClassName('form__select-drink')[0];
const commandTaglieri = document.getElementsByClassName('form__select-taglieri')[0];
const commandDessert = document.getElementsByClassName('form__select-dessert')[0];
const buttonAddCommand = document.getElementsByClassName('form__button')[0];

function addCommand() {
  document.getElementsByClassName('command__drink')[0].innerHTML = commandDrink.value;
  document.getElementsByClassName('command__taglieri')[0].innerHTML = commandTaglieri.value;
  document.getElementsByClassName('command__dessert')[0].innerHTML = commandDessert.value;
}

buttonAddCommand.onclick = addCommand;
