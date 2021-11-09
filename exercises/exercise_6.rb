require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Stores < ActiveRecord::Base
  has_many :employees
  # @store1 = Stores.find_by(id: 1)
  # @store2 = Stores.find_by(id: 2)
  # @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  # @store2.employees.create(first_name: "ty", last_name: "z", hourly_rate: 60)

end

class Employees < ActiveRecord::Base
  belongs_to :store
  @store1 = Stores.find_by(id: 1)
  @store2 = Stores.find_by(id: 2)

  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store2.employees.create(first_name: "ty", last_name: "z", hourly_rate: 60)
end  