# DB設計

# usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false,unique: true|
|email|string|null: false,unique: true|
|password|string|null: false|
|icon|text||
|introduce|text|limit: 10000|

### Association
- has_many :posts dependent: :destroy
- has_many :comments dependent: :destroy

## postテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|limit: 10000|
|category|references|null: false, foreign_key: true|
|brand|string||

### Association
- has_many :comments dependent: :destroy
- has_many :images dependent: :destroy
- belongs_to :user
- belongs_to :category

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|post_id|references|null: false, foreign_key: true|
### Association
- has_many :post


## imageテーブル

|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|post_id|references|null: false, foreign_key: true|


### Association
- belongs_to :post
- belongs_to :user


## commentテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user
