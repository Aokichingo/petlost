class Post < ApplicationRecord
    has_many :comments
    validates :title, presence: true, length:{minimum: 3,
    message:"三文字以上書いてください"}
    validates :body, presence: true
end
