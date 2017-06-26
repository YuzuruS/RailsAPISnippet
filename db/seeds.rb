# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = []
8000.times do |num|
  number = num + 1
  name = "user#{number}"
  user = User.create(:name => name)
  user_list.push(user)
end

product_list = []
100.times do |num|
  number = num + 1
  name = "product#{number}"
  product = Product.create(:name => name)
  product_list.push(product)
end

user_list.each do |user|
  product_list.each do |product|
    user_id = user.id
    product_id = product.id
    Log.create(:user_id => user_id, :product_id => product_id)
  end
end
