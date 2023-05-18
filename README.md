# アプリケーション名
ContactBook
<br />
<br />

# アプリケーション概要
保育園と保護者の双方が安心して子どもの保育をする上で、お互いに連絡を取り合うことで子どもの情報を共有し、子ども健康状態を把握できるだけでなく、日々の様子や成長を記録することができる紙媒体の連絡帳をアプリ化。<br />
連絡帳（紙媒体）を管理する負担を軽減し、保育園と保護者双方の可処分時間を増やす。
<br />
<br />

# URL
https://contactbook-38529.onrender.com/
<br />
<br />

# テスト用アカウント
Basic認証ID：admin<br />
Basic認証パスワード：3554
<br />
<br />
管理者ID：sensei@sensei<br />
管理者パスワード：sensei1111
<br />
<br />
ユーザーID：zirou@zirou<br />
ユーザーパスワード：zirou1111
<br />
<br />

# 利用方法
### 連絡帳作成
----------------------------------------------------
1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う。<br />
2.連絡帳作成ボタンから連絡内容（連絡日時、体温、睡眠時間など）を入力して作成する。
<br />
<br />

# アプリケーションを作成した背景
二人の子どもが通っている保育園に毎日朝の忙しい時間に連絡帳を書いて提出するが、紙媒体であるため、失くしてしまうリスク、持っていくのを忘れるリスク、持って帰るのを忘れるリスク、ペンが無ければ書くことができないという複数の課題が生じていた。<br />
これら紙媒体であるが故の課題を解決するために、スマホ一つデジタルでいつでも使用できる連絡帳アプリケーションを開発することにした。
<br />
<br />

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1Unw2Tatyjeyy3tH1Cav3cyIYqEqL2-_pTmADCD8Fjho/edit#gid=982722306
<br />
<br />

# 実装した機能についての画像やGIFおよびその説明
<br />
<br />

# 実装予定の機能
招待機能、集金機能、連絡帳データエクスポート機能を実装予定。
<br />
<br />

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/7e28cf3ec15fa3fee9d099f4b70c7411.png)](https://gyazo.com/7e28cf3ec15fa3fee9d099f4b70c7411)
<br />
<br />

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5b18eb8c71e3668f8b4c0aaaed1890a3.png)](https://gyazo.com/5b18eb8c71e3668f8b4c0aaaed1890a3)
<br />
<br />

# 開発環境
・Ruby<br />
・RubyonRails<br />
・Github<br />
・render
・TablePlus
<br />
<br />

# ローカルでの動作方法
<br />
<br />

# 工夫したポイント
トップ画像をMidjourneyで生成、管理者機能、退会機能（論理削除）