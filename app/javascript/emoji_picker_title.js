function hover() {
  
  const emojiTitle = document.getElementById('emoji-title')
  const emojiPickerTitle = document.getElementById('emoji-picker-title')
  var a = 0 //絵文字を１回だけクリックしても複数絵文字入力されるバグ修正。pickerを開くたびに'emoji-click'回数が増えるので起こる。

  emojiTitle.addEventListener('click', function () {
    if (emojiPickerTitle.getAttribute("style") == "display:block;") {
      emojiPickerTitle.removeAttribute("style", "display:block;")
      a = 0
    } else {
      a = 0
      emojiPickerTitle.setAttribute("style", "display:block;")
      emojiPickerTitle.addEventListener('emoji-click', function () {
        if (a == 0){
          document.getElementById("title").value += event.detail.unicode;
          a += 1
          emojiPickerTitle.removeAttribute("style", "display:block;")
        }
      })
    }
  });
};

window.addEventListener('DOMContentLoaded', hover);