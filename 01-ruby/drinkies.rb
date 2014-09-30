print "Please enter your age (in earth years): "
user_age = gets.chomp.to_i

if user_age >= 18
  puts "Drink up to numb the pain"
else
  puts "You gotta wait for legality!"
end
