require 'pry'

sucker1 = "DT"
sucker2 = "Larlyn"
sucker3 = "James"
sucker4 = "Bart"


suckers = ['DT', 'Larlyn', 'James', 'Bart']

binding.pry


# other examples

# numeric array
my_numeric_array = [1, 2, 3, 4, 5, 6]
my_numeric_array[0]
my_numeric_array[1]
my_numeric_array.first
my_numeric_array.last
my_numeric_array.push(56)
my_numeric_array.pop
my_numeric_array << 56
my_numeric_array.pop


# string array
my_string_array = ["Welcome", "to"]
my_string_array << "WDI"
my_string_array.shift
my_string_array.unshift(["Say", "hello"])
my_string_array.flatten!
my_string_array.reverse!
my_string_array.pop
my_string_array << "I"
my_string_array.push("say")
my_string_array.delete_at(1)
my_string_array.unshift("To")


# mixed-types array
my_mized_array = ["Welcome", 2, "WDI", 2013]


