class Comment < ApplicationRecord
# バリデーション
validates :text, presence: true
validates :user, presence: true
validates :prototype, presence: true

# アソシエーション
 belongs_to :prototype
 belongs_to :user
end
