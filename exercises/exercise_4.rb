require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Your code goes below here ...
class Stores < ActiveRecord::Base
  has_many :employees
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

  # @mens_stores = Stores.where("womens_apparel = false AND mens_apparel = true")
  # # puts @mens_stores

  # @mens_stores.each do |element|
  #   puts "name #{element.name}, revenue #{element.annual_revenue}"
  # end

  # @womens_stores = Stores.where("mens_apparel = false AND womens_apparel = true AND annual_revenue < 1000000")

  # @womens_stores.each do |element|
  #   puts "name #{element.name}, revenue #{element.annual_revenue}"
  # end
end