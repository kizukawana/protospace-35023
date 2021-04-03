class Comment < ApplicationRecord
# バリデーション
validates :text, presence: true

# アソシエーション
 belongs_to :prototype
 belongs_to :user
end
