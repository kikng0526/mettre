class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :fashion

  validates_uniquness_of :fashion_id, scope: :user_id
end
