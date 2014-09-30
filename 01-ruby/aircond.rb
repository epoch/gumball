print "what is the current temperature? "
current_temp = gets.chomp.to_i

print "Is the air-cond operational (y/n) "
input = gets.chomp.downcase

if input == 'y'
  working_air_cond = true
else
  working_air_cond = false
end

print "what is the desired temperature? "
desired_temp = gets.chomp.to_i

if working_air_cond

  if current_temp > desired_temp
    puts "turn on the air cond"
  end

else

  if current_temp > desired_temp
    puts 'FIX IT NOW ITS HOT'
  elsif current_temp < desired_temp
    puts "fix it whenever you have the chance"
  end

end



