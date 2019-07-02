class User < ApplicationRecord
   has_many :photos
   has_many :albums
   has_many :likes
   has_many :likes_albums
   has_many :albums, through: :likes_albums
   has_many :likes_photos
   has_many :photos, through: :likes_photos



    has_many :follower, class_name: 'User', foreign_key: :follower_id
    has_many :followers, through: :follower, source: :follower


    has_many :followed, class_name: 'User', foreign_key: :followed_id
    has_many :followeds, through: :followed, source: :followed









   has_secure_password


=begin
-Tên (bắt buộc): dài tối đa 25 ký tự.
-Họ (bắt buộc): dài tối đa 25 ký tự.
-Email (bắt buộc): dài tối đa 255 ký tự. Bên cạnh đó, nó phải là duy nhất và tuân thủ định dạng email chung.
-Mật khẩu (bắt buộc): dài tối đa 64 ký tự.
=end


validates :first_name,:last_name,:email,:password,:password_confirmation,presence: true
validates :first_name, :last_name, length: {maximum: 25}
validates :email, uniqueness: true, length: {maximum: 255}, format: /\w+@\w+\.{1}[a-zA-Z{2,}]/
validates :password,:password_confirmation, length:{maximum: 64}

end
