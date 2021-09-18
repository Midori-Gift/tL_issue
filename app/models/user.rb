class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
         validates :name, presence: true
         
        # 適切なメールアドレスだけが登録できるように正規表現追加
         TRUE_EMAIL = /[\w]+@[a-z]+\.[a-z]+\.?[a-z]+/
         validates :email, presence: true, format: { with: TRUE_EMAIL}
         
         has_many :posts, dependent: :destroy
         has_many :post_comments, dependent: :destroy
         has_many :favorites, dependent: :destroy
         
        # ユーザーアイコン設定用
         attachment :profile_image
end
