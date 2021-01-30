document.addEventListener('DOMContentLoaded', function(){
  console.log(123);
  const ImageList = document.getElementById('image-list');
    
    // 選択した画像を表示する関数
  const createImageHTML = (blob) => {
    console.log(123);
    // 画像を表示するためのdiv要素を生成
    const imageElement = document.createElement('div')
    imageElement.setAttribute('class', "image-element")
    let imageElementNum = document.querySelectorAll('.image-element').length
      
    // ファイル選択ボタンを生成<input id="post-image_${imageElementNum}" type="file">
    const inputHTML = document.createElement('input')
    inputHTML.setAttribute('multiple', true)
    inputHTML.setAttribute('id', `post_image_${imageElementNum}`)
    inputHTML.setAttribute('name', 'post[images][]')
    inputHTML.setAttribute('type', 'file')

      
    // 生成したHTMLの要素をブラウザに表示させる
    imageElement.appendChild(inputHTML)
    ImageList.appendChild(imageElement)

    // ２枚目以降の画像選択後にもイベント発火
    inputHTML.addEventListener('change', (e) => {
      file = e.target.files[0];
      blob = window.URL.createObjectURL(file);

      createImageHTML(blob)
    })
  }

  document.getElementById('post-images').addEventListener('change', function (e) {
      
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      
      createImageHTML(blob);
      
    });
});