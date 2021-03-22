// 絵文字パッド機能 日記タイトル用
function hover() {
  
  const emojiTitle = document.getElementById('emoji-title')
  const emojiPickerTitle = document.getElementById('emoji-picker-title')
  var a = 0 //絵文字を１回だけクリックしても複数絵文字入力されるバグ修正。pickerを開くたびに'emoji-click'イベント発火数が増えので、pickerを閉じるとイベント発火数をリセットすることで改善。

  emojiTitle.addEventListener('click', function () {

    //emojiPiker閉じる場合
    if (emojiPickerTitle.getAttribute("style") == "display:block;") {
      emojiPickerTitle.removeAttribute("style", "display:block;")
      a = 0 //emojiPiker起動イベント発火数０にリセット
    }
    
    //emojiPiker開く場合
    else {
      a = 0 //emojiPiker起動イベント発火数０にリセット
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