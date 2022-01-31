usersテーブル

|Column             |Type   | Options                | 
|                   |       |                        |
|nickname           |string |null:false              |
|email              |string |null:false, unique:true |
|encrypted_password |string |null:false              |
|first_name         |string |null:false              |
|last_name          |string |null:false              |
|birth_date         |date   |null:false              |
|skill              |string |null:false              |
|prefecture_id      |integer|null:false              |
|license            |string |null:false              |
|airframe           |string |null:false              |
|introduction       |text   |null:false              |

has_many :comments
has_many :jobs


commentsテーブル

|Column              |Type       | Options                      | 
|                    |           |                              |
|content             |string     |null:false                    |
|jobs                |references |null:false, foreign_key: true |
|user                |references |null:false, foreign_key: true |

belongs_to :user
belongs_to :job


jobsテーブル

|Column             |Type   | Option                 | 
|                   |       |                        |
|business           |string |null:false              |
|detail             |text   |null:false, unique:true |
|reword             |string |null:false              |
|prefecture_id      |string |null:false              |
|schedule           |date   |null:false              |
|airframe_id        |string |null:false              |


belongs_to :user
has_many :comments
