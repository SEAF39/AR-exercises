require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Find the first store with the name "Burnaby"
@store = Store.find_by(name: "Burnaby")

# Update the store's name to "Burnaby Heights"
@store.update(name: "Burnaby Heights")

# Output the updated name of the store
puts "Updated Store Name: #{@store.name}"

# Attempt to update the annual revenue of the store to a negative value
@store.update(annual_revenue: -100000)

# Output the errors if there are any
if @store.errors.any?
  puts "Errors:"
  @store.errors.full_messages.each do |message|
    puts message
  end
end
