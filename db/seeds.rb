require 'faker'

#Item.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('products')


product1 = Product.create({:title=>"tomato", :price => 1})
product2 = Product.create({:title=>"milk", :price => 3})
product3 = Product.create({:title=>"bread", :price => 5.50})
product4 = Product.create({:title=>"bacon", :price => 10})
product5 = Product.create({:title=>"cheese", :price => 3.20})
product6 = Product.create({:title=>"molohia", :price => 15.20})

puts "C'est fait"

