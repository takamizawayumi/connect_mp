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
|Dr|references|null: false,foreign_key: true|
|Dietitian|references|null: false,foreign_key: true|
|SW|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :Drs
- belongs_to :Dietitians
- belongs_to :SWs

## Drsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :tags


## Dietitiansテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :tags


## SWsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :tags


## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|user|references|null: false, foreign_key: true|
|Dr|references|null: false,foreign_key: true|
|Dietitian|references|null: false,foreign_key: true|
|SW|references|null: false,foreign_key: true|
### Association
- belongs_to :Drs
- belongs_to :Dietitians
- belongs_to :SWs
- has_many :user_tags
- has_many :users, through: :user_tags

## user_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tag