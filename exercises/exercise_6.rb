require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Define the Employee model with the belongs_to association to Store
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Define the Store model with the has_many association to Employee
class Store < ActiveRecord::Base
  has_many :employees
end

# Find the first store
@store1 = Store.first

# Create a new employee and associate it with the first store
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 40)

# Output the count of employees associated with the first store
puts "Number of employees in Store 1: #{store1.employees.count}"
