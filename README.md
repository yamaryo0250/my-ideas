# テーブル設計

## categories テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| id                 | bigint     | primary key |
| name               | string     | null: false, unique: true |


### Association

- has_many : ideas

 ## ideas テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| id                 | bigint     | primary key |
| category_id        | references | null: false, foreign_key: true |
| body               | text       | null: false |


### Association

- belongs_to : category
