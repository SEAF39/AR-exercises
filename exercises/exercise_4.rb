require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


# Retrieve all stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Print the name and annual revenue of each men's store
@mens_stores.each do |store|
  puts "Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Retrieve all stores that carry women's apparel and have an annual revenue less than $1 million
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# Print the name and annual revenue of each women's store
@womens_stores.each do |store|
  puts "Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
