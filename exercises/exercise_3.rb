require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base
  surrey = Stores.create(
    name: "Surrey" ,
    annual_revenue:224000 ,
    womens_apparel: true ,
    mens_apparel: false
  )
  
  whistler = Stores.create(
    name:"Whistler",
    annual_revenue: 1260000,
    womens_apparel: true,
    mens_apparel: false,
  )
  
  yaletown = Stores.create(
    name:"Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
  )
  @store3 = Stores.find_by(id: 3)
  @store3.destroy

  stores_num = Stores.all.count

  # puts "This is stores num #{stores_num}"
end
