require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Stores < ActiveRecord::Base
  has_many :employees
  burnaby = Stores.create(
    name:"Burnaby",
    annual_revenue:300000,
    womens_apparel: true,
    mens_apparel: true)

  richmond = Stores.create(
    name:"richmond",
    annual_revenue: 1260000,
    womens_apparel: true,
    mens_apparel: false,
  )

  gastown = Stores.create(
    name:"gastown",
    annual_revenue: 190000,
    mens_apparel: true,
    womens_apparel: false
  )

  stores_num = Stores.all.count

  # puts "This is stores num #{stores_num}"
end