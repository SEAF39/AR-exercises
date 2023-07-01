require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Set up the database connection
ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  database: "your_database_name",
  username: "your_username",
  password: "your_password"
)

# Create a Store model representing the "stores" table
class Store < ActiveRecord::Base
end

# Create an Employee model representing the "employees" table
class Employee < ActiveRecord::Base
end

# Test the setup by retrieving and printing the count of stores
puts "Number of stores: #{Store.count}"
