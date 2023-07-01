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

# Define the Employee model with the belongs_to association to Store
class Employee < ActiveRecord::Base
  belongs_to :store

  # Add data validation for the presence of a first name, last name, and a minimum hourly rate of 40
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
end

# Define the Store model with the has_many association to Employee
class Store < ActiveRecord::Base
  has_many :employees

  # Add data validation for the minimum name length of 3 and a minimum annual revenue of 0
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

# Ask the user to input a store name
print "Enter a store name: "
store_name = gets.chomp

# Create a new store with the user input as the name and a random annual revenue
new_store = Store.create(name: store_name, annual_revenue: rand(1_000_000))

# Output any validation errors for the new store
puts "Validation errors for the new store:"
new_store.errors.full_messages.each do |message|
  puts message
end
