class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :album
  has_many :likes_photos
  has_many :users, through: :likes_photos
end
