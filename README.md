# テーブル設計

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
| comments | string     | null: false                    |
| user     | references | null: false, foreign_key: true |
| lyric    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :lyric

## lyrics テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| lyric  | string | null: false |
| song   | string | null: false |
| artist | string | null: false |

### Association

- has_many   :comments
- belongs_to :user

