class Post < ApplicationRecord
  
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  # バリデーションを追加、投稿文と画像が無ければ投稿は不可とする　2021/09/13
  validates :sentence, presence: true
  validates :image, presence: true
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
  attachment :image
  
end
