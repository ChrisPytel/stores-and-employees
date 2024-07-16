require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "\n----------------- Exercise 4 -----------------------\n\n"

# Exercise 4: Loading a subset of stores

#   Borrowing and modifying the code from Exercise one, create 3 more stores:
#     Surrey (annual_revenue of 224000, carries women's apparel only)
#     Whistler (annual_revenue of 1900000 carries men's apparel only)
#     Yaletown (annual_revenue of 430000 carries men's and women's apparel)

#   Using the where class method from Active Record, fetch (a collection of) 
#   only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
#   Loop through each of these stores and output their name and annual revenue on each line.
#   Do another fetch but this time load stores that carry women's apparel and are generating
#   less than $1M in annual revenue.

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: false)


puts "\n  All stores that carry mens clothing:" ; # puts @mens_stores.inspect
@mens_stores = Store.where(mens_apparel: true)

# Looping through with a for in style loop
for store in @mens_stores
  puts "Location: #{store.name} | Annual Revenue #{store.annual_revenue}"
end


puts "\n  Womens stores that generate less than 1M annually:"
@womens_store = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, true) ; # puts @mens_stores.inspect

# Looping through with a .each method loop
@womens_store.each do |store| 
  puts "Location: #{store.name} | Annual Revenue #{store.annual_revenue}"
end
