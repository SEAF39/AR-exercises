require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Find the store with an id of 1 and assign it to an instance variable
@store1 = Store.find(1)

# Delete the store with an id of 1 if it exists
if @store1
  @store1.destroy
else
  puts "Store with id 1 not found"
end

# Find the number of remaining stores
@store_count = Store.count
puts "Number of stores remaining: #{@store_count}"
