# アプリケーション名
<br>
PERFUME SHELF
<br>

# アプリケーション概要
<br>
所持している香水のデータを登録し、一覧・管理をしやすくすることができる。
<br>

# URL
[https://perfume-shelf.onrender.com/](https://perfume-shelf.onrender.com/)
<br>

# テスト用アカウント
アカウント名：test1<br>
パスワード　：aaa111
<br>

# 利用方法
## 香水の登録
1.トップページのヘッダーからユーザー新規登録を行う<br>
2.placeボタンから香水のデータ（画像、名前、ブランド名、種類、香調、メモ）を入力し登録する
<br>

## 自分以外のユーザーをフォローする（実装予定）
1.自分以外のユーザーのマイページにあるフォローボタンを押す
<br>

## 自分以外のユーザーが登録した香水にいいねをする（実装予定）
1.いいねをしたい香水の詳細ページにあるハートボタンを押す
<br>

# アプリケーションを作成した背景
自分自身の抱えている課題として、「趣味で集めている香水を管理しきれていない」ことが挙げられる。課題を分析した結果、「持っている香水を一覧にして簡単に確認できるツールがない」ということが原因であると仮説を立てた。また、自分の好みでは出会えなかった香水や、自分以外の方の感想なども確認してより香水を楽しめるよう、香水好きの人同士でフォロー機能やいいねを送ることができるコレクションアプリケーションを開発することにした。
<br>

# 洗いだした要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1frxHiw0JKlAskpwfM3xjC3Ob6_ECQ9hjufJ-KlnCB_M/edit#gid=982722306)
<br>

# 実装した機能についての画像やGIF及びその説明

# 実装予定の機能
現在はユーザー管理機能、香水登録機能、トップページでの香水の一覧機能、香水の詳細ページ、香水情報の編集・削除機能、ユーザーマイページの実装、ユーザー登録時にお気に入りの香水を1つ登録する機能と投稿時のプレビュー表示機能の実装が完了した段階。<br>
今後はユーザー新規登録時にお気に入りの香水を最大5つまで保存する機能、フォロー機能、いいね機能、モデル単体テスト、投稿時の画像サイズや位置の調整機能を実装予定。
<br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/b06b030769c1f41eb4b9c6c286a8cd29.png)](https://gyazo.com/b06b030769c1f41eb4b9c6c286a8cd29)
<br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2e29546b1b1b74877421a302f83a0de9.png)](https://gyazo.com/2e29546b1b1b74877421a302f83a0de9)
<br>
# 開発環境
・HTML/CSS
・Ruby on Rails
・RSpec
・Visual Studio Code
・GitHub
# ローカルでの動作方法

# 工夫したポイント
・ユーザー管理機能の実装ではdeviseを導入したが、ログインをシンプルにしたかったためemailを使用しないユーザー名とパスワードのみのログイン機能とした。
・gemのcarrierwaveを導入し、ユーザー登録時にお気に入りの香水の画像と名前を1つ分登録できるようにした。

