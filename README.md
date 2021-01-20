# My Diary

## アプリケーション概要

毎日続けたくなる！書いた後気持ちよく寝れる！日記のアプリケーションを作成しました。ユーザーを登録すると日記を投稿できるようになります。自身が投稿した日記はカレンダーから好きな日の投稿を振り返ることができます。

## URL

https://my-diary-32630.herokuapp.com/

## テスト用アカウント

ログイン用
メールアドレス: a@gmail.com
パスワード: a00000

## 利用方法

Web ブラウザ Google Chrome の最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。
投稿方法
テストアカウントでログイン → トップページ上部の投稿ボタン押下 → 投稿情報入力 → 投稿
投稿履歴カレンダー確認方法
テストアカウントでログイン → トップページ上部の（ログインユーザー名）▼ からカレンダー選択 → 投稿履歴カレンダー表示
確認後、ログアウト処理をお願いします。

## 目指した課題解決

趣味で毎日日記をつけているのですが、毎日書きたくなる！と感じるために特に大事と思う点が 2 つあります。

① 書いた後、気持ちよく寝られること。
→ 好きなキャラクターを毎日日記に登場させてみたい！！
もし投稿後に好きなキャラクターが登場すれば、投稿後に気持ちよく寝られると思いました。

② 日記投稿の快適さ。
日記アプリは広告がつくことが多く、快適に書くことができない。
→ 自作することで広告無しで手軽に日記をつけることができる。

## 洗い出した要件

| 機能               | 目的                                                                                                                         | 詳細                                                                                                                             | ストーリー(ユースケース)                                                                                                                                              |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ユーザー登録機能   | ログインユーザー自身の投稿のみ閲覧、編集できるようにするため。                                                               | ・ユーザー新規登録 ・ユーザー登録後にログインできる。 ・ユーザー登録後にユーザー情報を編集できる。 ・ログアウトできる。          | トップページから新規登録、ログイン、ログアウトする。                                                                                                                  |
| 日記投稿機能       | 日記投稿し、閲覧、編集、削除できるようにするため。                                                                           | ・投稿機能 ・投稿の一覧表示、詳細、編集、削除                                                                                    | ・トップページから投稿ページに遷移。 ・トップページには投稿日記履歴があり、閲覧、編集、削除が可能。                                                                   |
| カレンダー機能     | カレンダーから投稿した日記を振り返ることができるようにしたい。                                                               | ・カレンダーにその日ごとの投稿日記が一覧表示され、過去の投稿日記を閲覧できる。                                                   | ・トップページからカレンダーページに遷移。 ・カレンダーに投稿日記のタイトルが表示され、クリックするとその投稿内容が閲覧できる。                                       |
| 絵文字機能         | 日記投稿で絵文字を絵文字パッドから簡単に入力できるようにしたい。                                                             | ・投稿タイトル、本文に絵文字パッド入力機能追加。                                                                                 | ・投稿タイトルに絵文字を絵文字パッドから入力できる。 ・投稿本文に絵文字を絵文字パッドから入力できる。                                                                 |
| 投稿完了メッセージ | 投稿完了後に好きなメッセージ（画像つき）がでて、その日気持ちよく寝れるようにしたり、毎日意識したいことが現れるようにしたい。 | ・投稿後完了画面追加。 ・投稿後完了後に現れるメッセージを複数登録できる。 ・投稿後に登録したメッセージからランダムに一つ現れる。 | ・ユーザーのマイページから投稿完了画面に表記するメッセージを登録。 ・投稿完了画面で、もしメッセージを登録していれば、登録したメッセージからランダムに一つ表記される。 |
| 検索機能           | 投稿した日記をワード検索したい                                                                                               | ・post コントローラーに検索メソッド作成。 ・作成した検索メソッドを元に view に検索ボックス作成。                                 | 検索ボックスからワード検索して、過去の日記を見つけられる。                                                                                                            |

## 実装した機能についての GIF と説明

## 実装予定の機能

・お気に入り機能
・グーグルログイン

## データベース設計

<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;e5cb6b36-9399-4d54-80ab-a733a5d42c9f\&quot; modified=\&quot;2021-01-20T03:18:46.570Z\&quot; agent=\&quot;5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.52.1 Chrome/83.0.4103.122 Electron/9.3.5 Safari/537.36\&quot; etag=\&quot;fX1bK6O_szmWz_jM1q0u\&quot; version=\&quot;13.10.0\&quot; type=\&quot;embed\&quot;&gt;&lt;diagram id=\&quot;Qd-zs6veOznJuuQSJmig\&quot; name=\&quot;Page-1\&quot;&gt;&lt;mxGraphModel dx=\&quot;434\&quot; dy=\&quot;680\&quot; grid=\&quot;1\&quot; gridSize=\&quot;10\&quot; guides=\&quot;0\&quot; tooltips=\&quot;1\&quot; connect=\&quot;1\&quot; arrows=\&quot;1\&quot; fold=\&quot;1\&quot; page=\&quot;1\&quot; pageScale=\&quot;1\&quot; pageWidth=\&quot;827\&quot; pageHeight=\&quot;1169\&quot; math=\&quot;0\&quot; shadow=\&quot;0\&quot;&gt;&lt;root&gt;&lt;mxCell id=\&quot;0\&quot;/&gt;&lt;mxCell id=\&quot;1\&quot; parent=\&quot;0\&quot;/&gt;&lt;mxCell id=\&quot;14\&quot; value=\&quot;users\&quot; style=\&quot;shape=table;startSize=30;container=1;collapsible=1;childLayout=tableLayout;fixedRows=1;rowLines=0;fontStyle=1;align=center;resizeLast=1;\&quot; parent=\&quot;1\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;20\&quot; y=\&quot;40\&quot; width=\&quot;180\&quot; height=\&quot;130\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;18\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;14\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;30\&quot; width=\&quot;180\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;19\&quot; value=\&quot;email\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;18\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;20\&quot; value=\&quot;string\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;18\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;110\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;21\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;14\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;60\&quot; width=\&quot;180\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;22\&quot; value=\&quot;password\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;21\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;23\&quot; value=\&quot;string\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;21\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;110\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;24\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;14\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;90\&quot; width=\&quot;180\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;25\&quot; value=\&quot;nickname\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;24\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;26\&quot; value=\&quot;string\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;24\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;110\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;27\&quot; value=\&quot;post\&quot; style=\&quot;shape=table;startSize=30;container=1;collapsible=1;childLayout=tableLayout;fixedRows=1;rowLines=0;fontStyle=1;align=center;resizeLast=1;\&quot; parent=\&quot;1\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;310\&quot; y=\&quot;40\&quot; width=\&quot;210\&quot; height=\&quot;130\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;28\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;27\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;30\&quot; width=\&quot;210\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;29\&quot; value=\&quot;title\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;28\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;30\&quot; value=\&quot;string\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;28\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;140\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;31\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;27\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;60\&quot; width=\&quot;210\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;32\&quot; value=\&quot;text\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;31\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;33\&quot; value=\&quot;text\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;31\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;140\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;34\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;27\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;90\&quot; width=\&quot;210\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;35\&quot; value=\&quot;images\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;34\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;36\&quot; value=\&quot;images(active strage)\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;34\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;140\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;37\&quot; value=\&quot;\&quot; style=\&quot;edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;\&quot; parent=\&quot;1\&quot; edge=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;100\&quot; height=\&quot;100\&quot; relative=\&quot;1\&quot; as=\&quot;geometry\&quot;&gt;&lt;mxPoint x=\&quot;202\&quot; y=\&quot;124\&quot; as=\&quot;sourcePoint\&quot;/&gt;&lt;mxPoint x=\&quot;309\&quot; y=\&quot;124\&quot; as=\&quot;targetPoint\&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;48\&quot; value=\&quot;message\&quot; style=\&quot;shape=table;startSize=30;container=1;collapsible=1;childLayout=tableLayout;fixedRows=1;rowLines=0;fontStyle=1;align=center;resizeLast=1;\&quot; parent=\&quot;1\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;310\&quot; y=\&quot;200\&quot; width=\&quot;200\&quot; height=\&quot;130\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;49\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;48\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;30\&quot; width=\&quot;200\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;50\&quot; value=\&quot;text\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;49\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;51\&quot; value=\&quot;string\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;49\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;130\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;52\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;48\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;60\&quot; width=\&quot;200\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;53\&quot; value=\&quot;image\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;52\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;54\&quot; value=\&quot;image(activestrage)\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;52\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;130\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;55\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;collapsible=0;dropTarget=0;pointerEvents=0;fillColor=none;top=0;left=0;bottom=0;right=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;\&quot; parent=\&quot;48\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry y=\&quot;90\&quot; width=\&quot;200\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;56\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;editable=1;overflow=hidden;\&quot; parent=\&quot;55\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;70\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;57\&quot; value=\&quot;\&quot; style=\&quot;shape=partialRectangle;connectable=0;fillColor=none;top=0;left=0;bottom=0;right=0;align=left;spacingLeft=6;overflow=hidden;\&quot; parent=\&quot;55\&quot; vertex=\&quot;1\&quot;&gt;&lt;mxGeometry x=\&quot;70\&quot; width=\&quot;130\&quot; height=\&quot;30\&quot; as=\&quot;geometry\&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=\&quot;60\&quot; value=\&quot;\&quot; style=\&quot;edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERmany;exitX=1.006;exitY=0.3;exitDx=0;exitDy=0;exitPerimeter=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;rounded=1;editable=1;bendable=1;shadow=1;anchorPointDirection=1;endFill=1;deletable=1;\&quot; parent=\&quot;1\&quot; source=\&quot;24\&quot; target=\&quot;52\&quot; edge=\&quot;1\&quot;&gt;&lt;mxGeometry width=\&quot;100\&quot; height=\&quot;100\&quot; relative=\&quot;1\&quot; as=\&quot;geometry\&quot;&gt;&lt;mxPoint x=\&quot;90\&quot; y=\&quot;170\&quot; as=\&quot;sourcePoint\&quot;/&gt;&lt;mxPoint x=\&quot;260\&quot; y=\&quot;310\&quot; as=\&quot;targetPoint\&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;/root&gt;&lt;/mxGraphModel&gt;&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>

## ローカルでの動作方法

以下のコマンドでローカルで起動してください。
$ git clone https://github.com/kei-yokoyama/my_diary.git
$ cd my_diary
$ bundle install
$ yarn install
$ rails db:create
$ rails db:migrate
$ rails s

### アプリケーション開発環境

Rails 6.0.3.4
