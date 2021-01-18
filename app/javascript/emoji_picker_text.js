function hover() {

  const emojiText = document.getElementById('emoji-text')
  const emojiPickerText = document.getElementById('emoji-picker-text')

  emojiText.addEventListener('click', function () {
    if (emojiPickerText.getAttribute("style") == "display:block;") {
      emojiPickerText.removeAttribute("style", "display:block;")
    } else {
      emojiPickerText.setAttribute("style", "display:block;")
      emojiPickerText.addEventListener('emoji-click', function () {
        document.getElementById("text").value += event.detail.unicode;
      })
    }
  });
};

window.addEventListener('load', hover);