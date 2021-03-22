// 絵文字パッド機能 日記テキスト本文用
function hover() {

  const emojiText = document.getElementById('emoji-text')
  const emojiPickerText = document.getElementById('emoji-picker-text')
  var a = 0 //aはemojiPiker起動イベント発火数を表す。絵文字を１回だけクリックしても複数絵文字入力されるバグ修正のため定義。pickerを開くたびに'emoji-click'イベント発火数が増えので、pickerを閉じるとイベント発火数をリセットすることで改善。

  emojiText.addEventListener('click', function () {

    //emojiPiker閉じる場合
    if (emojiPickerText.getAttribute("style") == "display:block;") {
      emojiPickerText.removeAttribute("style", "display:block;")
      a = 0 //emojiPiker起動イベント発火数０にリセット
    }
    
    //emojiPiker開く場合
    else {
      a = 0 //emojiPiker起動イベント発火数０にリセット
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