require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base
  has_many :employees
  @store1 = Stores.find_by(id: 1)
  @store2 = Stores.find_by(id: 2)

  @store1.name = "Burnaby"
  @store1.save
end