# テーブル設計

## usersテーブル

| column    | type   | options     |
| --------- | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |

- has_many :prototypes
- has_many :comments

## prototypesテーブル 

| column     | type          | options     |
| ---------- | ------------- | ----------- |
| title      | string        | null: false |
| catch_copy | text          | null: false |
| concept    | text          | null: false |
| image      | ActiveStorage | null: false |
| user       | references    | null: false |

- belongs_to :user
- has_many :comments

## commentsテーブル

| column    | type      | options     |
| --------- | --------- | ----------- |
| text      | text      | null: false |
| user      | reference |             |
| prototype | reference |             |

- belongs_to :user
- belongs_to :prototype