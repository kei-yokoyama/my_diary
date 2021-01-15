function hover() {
  

  const emojiButton = document.querySelector('emoji-picker')

  emojiButton.addEventListener('emoji-click', function () {
    document.getElementById("text").value += event.detail.unicode;
  })

}
window.addEventListener('load', hover);