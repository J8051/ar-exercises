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

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, length: { in: 4..200 }
  belongs_to :store
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
end

puts "Please enter a store name"
storeName = gets.chomp
store = Store.create(name:storeName)
puts store.valid?
puts store.errors.full_messages