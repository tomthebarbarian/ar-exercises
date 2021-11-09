require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base

  @store3 = Stores.find_by(id: 3)
  @store3.destroy

  stores_num = Stores.all.count

  puts "This is stores num #{stores_num}"
end
