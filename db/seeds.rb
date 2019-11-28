require 'faker'

image_url = ["https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/290204/pexels-photo-290204.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1056251/pexels-photo-1056251.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/2071873/pexels-photo-2071873.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1404819/pexels-photo-1404819.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/126407/pexels-photo-126407.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1314550/pexels-photo-1314550.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/2071881/pexels-photo-2071881.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1576193/pexels-photo-1576193.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/982865/pexels-photo-982865.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/615369/pexels-photo-615369.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/236606/pexels-photo-236606.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/736532/pexels-photo-736532.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1653357/pexels-photo-1653357.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
"https://images.pexels.com/photos/1687831/pexels-photo-1687831.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
]

Item.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('items')

20.times do 
  item = Item.create!(
    title: Faker::Creature::Cat.name,
    description: Faker::Lorem.paragraph_by_chars,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: image_url.sample)
end

puts "C'est fait"

