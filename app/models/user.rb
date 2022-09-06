class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
  validates :nickname, presence: true
  validates :nickname, length: { maximum: 50 }
  has_many :posts, dependent: :destroy
  has_many :comments
end
