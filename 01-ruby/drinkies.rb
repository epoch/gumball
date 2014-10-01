# print "Please enter your age (in earth years): "
# user_age = gets.chomp.to_i

a = 999

def check_legality(x)
  if x >= 18
    puts "Drink up to numb the pain"
  else
    puts "You gotta wait for legality!"
  end

  puts a
end


# check_legality()
my_age = 54
check_legality(my_age)
