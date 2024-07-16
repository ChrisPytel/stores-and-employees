require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\n----------------- Exercise 3 -----------------------\n\n"

# Exercise 3: Delete the third store

#   Load the third store (into @store3) as you did the other two before.
#   Using Active Record's destroy method, delete the store from the database.
#   Verify that the store has been deleted by again outputting the count

@store3 = Store.find_by(id: "3")
@store3.destroy

puts("\nTotal number of stores currently: #{Store.count}")