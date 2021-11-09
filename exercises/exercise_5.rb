require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base
  # stores_sum = Stores.all.sum(:annual_revenue)
  # puts stores_sum
  # stores_avg  = Stores.all.average(:annual_revenue)
  # puts stores_avg

  # rhinos = Stores.where("annual_revenue > 1000000").count
  # puts rhinos
end