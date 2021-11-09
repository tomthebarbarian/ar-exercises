require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, comparison: { greater_than: 0}
end

class Employees < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, comparison: { greater_than_or_equal_to:  40}
  validates :hourly_rate, comparison: { les_than_or_equal_to:  200}
  validates :store_id, presence: true
end