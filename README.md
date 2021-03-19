# テーブル設計

## users テーブル

|Column|Type|options|
|---|---|---|
|email|string|NOT NULL|
|password|string|NOT NULL|
|name|string|NOT NULL|
|profile|text|NOT NULL|
|occupation|text|NOT NULL|
|position|text|NOT NULL|

### association

- has_many :prototypes
- has_many :comments


## prototypes テーブル

|Column|Type|Options|
|---|---|---|
|title|string|NOT NULL|
|catch_copy|text|NOT NULL|
|concept|text|NOT NULL|
|image|ActiveStorage|  |
|user|references|  |

## association

- belongs_to :users
- has_many :comment


## comments テーブル

|Column|Type|Options|
|---|---|---|
|text|text|NOT NULL|
|user|reference|  |
|prototype|references|  |

### association

- belongs_to :users
- belongs_tp :prototype


