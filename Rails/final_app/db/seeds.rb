# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(:id => 1,:first_name => "Duy", :last_name => "Phan", :email => "duyphan2398@gmail.com", :password => "123456")
User.create(:id => 2,:first_name => "Duy", :last_name => "Phan", :email => "duyphan2398@gmail.com", :password => "123456")

User.create(:id => 3,:first_name => "Duy", :last_name => "Phan", :email => "duyphan2398@gmail.com", :password => "123456")

User.create(:id => 4,:first_name => "Duy", :last_name => "Phan", :email => "duyphan2398@gmail.com", :password => "123456")

User.create(:id => 5,:first_name => "Duy", :last_name => "Phan", :email => "duyphan2398@gmail.com", :password => "123456")

puts "Done"

Photo.destroy_all
Photo.create(:id => 1,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Photo.create(:id => 2,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Photo.create(:id => 3,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Photo.create(:id => 4,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Photo.create(:id => 5,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
puts "Done"

Album.destroy_all
Album.create(:id => 1,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Album.create(:id => 2,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Album.create(:id => 3,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Album.create(:id => 4,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
Album.create(:id => 5,:titile => "Đời không như mơ ", :content => "1 2 3 Ngôi sao")
puts "Done"






