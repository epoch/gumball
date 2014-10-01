# arr = ['a','b','c','d']

# arr.each do |item|
#   puts item
# end

# arr.each {|item| puts item }

arr2 = [4,5,6,7]

result = arr2.each do |item|
  puts item
end

result = arr2.map! do |item|
  item + 1
end

p result

p arr2








