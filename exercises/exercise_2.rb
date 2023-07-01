require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"


# Find the first store in the database and assign it to an instance variable
@store1 = Store.first

# Update the name of the first store
@store1.name = "New Store Name"
@store1.save

# Find the store with an id of 2 and update its name
@store2 = Store.find(2)
@store2.name = "Updated Store Name"
@store2.save

# Find all stores and loop through each one to print its name and annual revenue
@stores = Store.all
@stores.each do |store|
  puts "Store name: #{store.name}, Annual revenue: #{store.annual_revenue}"
end

# Find all stores that are generating $1M or more in annual revenue
@high_revenue_stores = Store.where("annual_revenue >= ?", 1000000)
@high_revenue_stores.each do |store|
  puts "High revenue store: #{store.name}"
end
