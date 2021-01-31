function hover() {

  const emojiText = document.getElementById('emoji-text')
  const emojiPickerText = document.getElementById('emoji-picker-text')
  var a = 0 //絵文字を１回だけクリックしても複数絵文字入力されるバグ修正。pickerを開くたびに'emoji-click'回数が増えるので起こる。

  emojiText.addEventListener('click', function () {
    if (emojiPickerText.getAttribute("style") == "display:block;") {
      emojiPickerText.removeAttribute("style", "display:block;")
      a = 0
    } else {
      a = 0
      emojiPickerText.setAttribute("style", "display:block;")
      emojiPickerText.addEventListener('emoji-click', function () {
        if (a == 0) {
          document.getElementById("text").value += event.detail.unicode;
          a += 1
          emojiPickerText.removeAttribute("style", "display:block;")
        }
      })
    }
  });
};

window.addEventListener('DOMContentLoaded', hover);