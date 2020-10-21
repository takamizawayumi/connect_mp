## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :user_tags
- has_many :tags, through: :user_tags

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user|references|null: false, foreign_key: true|
|tag|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tag

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :user_tags
- has_many :users, through: :user_tags

## user_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tag|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tag