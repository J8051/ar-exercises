require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end 

class Employee < ActiveRecord::Base
  belongs_to :store
end 

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Tommothy", last_name: "Jones", hourly_rate: 50)

@store2.employees.create(first_name: "Billy", last_name: "Smith", hourly_rate: 58)

@store2.employees.create(first_name: "Sally", last_name: "May", hourly_rate: 80)
