function hover() {
  const emojiTitle = document.getElementById('emoji-title')
  const emojiText = document.getElementById('emoji-text')
  const emojiPickerTitle = document.getElementById('emoji-picker-title')
  const emojiPickerText = document.getElementById('emoji-picker-text')

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