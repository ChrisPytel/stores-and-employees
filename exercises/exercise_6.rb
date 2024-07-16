require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "\n----------------- Exercise 6 -----------------------\n\n"


# Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. 
# If you look at this table's column structure, you'll find that it has a store_id (integer) column. 
# This is a column that identifies which store each employee belongs to. 
# It points to the id (integer) column of their store.

#   Create some more employees using the create method. 
#   You can do this by making multiple calls to create (like you have before.) 
#   No need to assign the employees to variables though. 
#   Create them through the @store# instance variables that you defined in previous exercises. 
#   Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).


@store1.employees.create(first_name: "Geralt", last_name: "of Rivia", hourly_rate: 80)
@store1.employees.create(first_name: "Yennefer ", last_name: "of Vengerberg", hourly_rate: 90)
@store1.employees.create(first_name: "Cirilla ", last_name: "Fiona Elen Riannon", hourly_rate: 40)
@store1.employees.create(first_name: "Triss ", last_name: "Merigold", hourly_rate: 70)

@store2.employees.create(first_name: "Jim", last_name: "Hopper", hourly_rate: 100)
@store2.employees.create(first_name: "Joyce", last_name: "Byers", hourly_rate: 80)
@store2.employees.create(first_name: "Nancy", last_name: "Wheeler", hourly_rate: 60)
@store2.employees.create(first_name: "Jonathan", last_name: "Byers", hourly_rate: 60)


puts "\nAll Registered employees:"

@employees = Employee.all

@employees.each do |employee|
  puts "\nEmployee name: #{employee.first_name} #{employee.last_name}"
end
