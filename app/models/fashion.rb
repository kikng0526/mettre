class Fashion < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :image

extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  belongs_to_active_hash :age
  belongs_to_active_hash :height

  def already_liked?(comment)
    likes.exists?(comment_id: comment.id)
  end
end
