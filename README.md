# アプリケーション名

My Favorite Lyrics

# アプリケーション概要

自分の心に残っている歌詞、救われた歌詞などを投稿し共感共有できる。
自分が探したい歌詞を検索できる。

# 本番環境

https://my-favorite-lyric.herokuapp.com/

# テスト用アカウント

Basic認証  ID:
          Pass:

ログイン   Email:www@www
          password:111111

# 制作背景(意図)
自分の中に感情としてはあるけど、言葉になっていないことだったりを抱えて悩んでいたりする人がいると思いました。
その悩みを音楽の歌詞で言葉として見つけられた時に救われる時があると思い自分と同じ境遇の人にも共感や共有しあ
える場所があるといいなと思いました。
また、それぞれの人がその歌詞をどういった解釈をしているのだろうということも知ることができたら
面白いなとも思い今回この「My Favorite Lyrics」というアプリを制作をしました。

# DEMO
トップページ
[![Image from Gyazo](https://i.gyazo.com/b2055951a6655b1b2e178d89627029f2.png)](https://gyazo.com/b2055951a6655b1b2e178d89627029f2)
新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/475dfb54c4c79ea3b42c424da8682d28.png)](https://gyazo.com/475dfb54c4c79ea3b42c424da8682d28)
ログイン画面
[![Image from Gyazo](https://i.gyazo.com/4967981d568efe4bcdfdc6df54519d74.png)](https://gyazo.com/4967981d568efe4bcdfdc6df54519d74)
新規投稿ページ
[![Image from Gyazo](https://i.gyazo.com/b555f4228c4ce288b258f932d0e9c2e2.png)](https://gyazo.com/b555f4228c4ce288b258f932d0e9c2e2)
コメントページ
[![Image from Gyazo](https://i.gyazo.com/0012f9581d59649a704a6e6f1f8081c4.png)](https://gyazo.com/0012f9581d59649a704a6e6f1f8081c4)
マイページ
[![Image from Gyazo](https://i.gyazo.com/d8450e8c210387deb9f345e5482adaa3.png)](https://gyazo.com/d8450e8c210387deb9f345e5482adaa3)
自分以外のユーザー投稿一覧
[![Image from Gyazo](https://i.gyazo.com/9fb5dfed25d2cd47873f1809e5dadce3.png)](https://gyazo.com/9fb5dfed25d2cd47873f1809e5dadce3)
編集ページ
[![Image from Gyazo](https://i.gyazo.com/ad55d5873889e2ce70c50b26fab7c813.png)](https://gyazo.com/ad55d5873889e2ce70c50b26fab7c813)

# 工夫したポイント
ユーザー登録をしなくても投稿の一覧は見れるようにしました。
また、投稿の右下の投稿者の名前をクリックすることでそのユーザーの
投稿一覧も見れるようにしました。
検索機能もあるのでワードなどで検索して見つけたい歌詞を探せるように
しました。

# 環境開発

## バックエンド
Ruby,Ruby on Rails
## フロントエンド
HTML、CSS
## データベース
MySQL,SequelPro
## インフラ
## Webサーバ（本番環境）
## ソース管理
GitHub,GitHubDesktop
## テスト
RSpec
## エディタ
VSCode

# 今後実装したい機能
- Javascriptを使ってユーザーがストレスなく使用できるよう- に実装する。
- タグ機能をつけて検索をより細かくできるように実装する。
- 気に入った歌詞のアーティストの曲が聞けるページへ遷移できるように実装する。

# DB設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :lyrics
- has_many :comments

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| text     | text       |                                |
| user     | references | null: false, foreign_key: true |
| lyric    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :lyric

## lyrics テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| lyric  | string     | null: false                    |
| song   | string     | null: false                    |
| artist | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- has_many   :comments
- belongs_to :user

