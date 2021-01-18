function hover() {
  
  const emojiTitle = document.getElementById('emoji-title')
  const emojiPickerTitle = document.getElementById('emoji-picker-title')

  emojiTitle.addEventListener('click', function () {
    if (emojiPickerTitle.getAttribute("style") == "display:block;") {
      emojiPickerTitle.removeAttribute("style", "display:block;")
    } else {
      emojiPickerTitle.setAttribute("style", "display:block;")
      emojiPickerTitle.addEventListener('emoji-click', function () {
        document.getElementById("title").value += event.detail.unicode;
      })
    }
  });
};

window.addEventListener('load', hover);