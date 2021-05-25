# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## usersテーブル

|      Column       |Type   |          Options           |
|nickname           |string | null: false                |
|email              |string | null: false ,unique: true  |
|encrypted_password |string | null: false                |
|age_id             |integer| null: false                |
|gender_id          |integer| null: false                |
|taste              |string | null: false                |
|profile            |text   | null: false                |

### Association
- has_many :restaurants
- has_many :comments
- has_many :dones
- has_many :talks

## restaurantsテーブル
|      Column       |Type       |          Options          |
|restaurant         |string     | null: false               |
|time_zone_id       |integer    |null: false ,unique: true  |
|category_id        |integer    |null: false                |
|close_time_id      |integer    |null: false                |
|memo               |text       |                           |
|user_id(FK)        |reference  |foreign_key: true          |

### Association
- belongs_to :user
- has_many   :comments

### commentsテーブル

|      Column       |Type       |          Options          |
|comment            |text       | null: false               |
|user_id(FK)        |reference  | foreign_key: true         |
|restaurants_id(FK) |reference  | foreign_key: true         |

### Association
- belongs_to :user
- belongs_to :comment

### donesテーブル
|      Column       |Type       |          Options          |
|user_id(FK)        |reference  | foreign_key: true         |
|restaurants_id(FK) |reference  | foreign_key: true         |

### Association
- belongs_to :user
- belongs_to :comment

### talksテーブル
|      Column       |Type       |          Options          |
|talk               |text       | null: false               |
|user_id(FK)        |reference  | foreign_key: true         |

### Association
- belongs_to :user


