class Album < ApplicationRecord
  has_many :photos
  belongs_to :user
  has_many :likes_albums
  has_many :users, through: :likes_albums
end
