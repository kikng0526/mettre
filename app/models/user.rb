class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :fashions
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  def already_favorited?(fashion)
    self.favorites.exists?(fashion_id: fashion.id)
  end
end
