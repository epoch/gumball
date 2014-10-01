def prompt(question)
  print question
  gets.chomp
end

current_temp = prompt("what is the current temperature? ")
current_temp = current_temp.to_i

print "Is the air-cond operational (y/n) "
input = gets.chomp.downcase

if input == 'y'
  working_air_cond = true
else
  working_air_cond = false
end

print "what is the desired temperature? "
desired_temp = gets.chomp.to_i


def adjust_aircon(curr_temp, desired_temp, status)
  if status
    if curr_temp > desired_temp
      puts "turn on the air cond"
    end
  else
    if curr_temp > desired_temp
      puts 'FIX IT NOW ITS HOT'
    elsif curr_temp < desired_temp
      puts "fix it whenever you have the chance"
    end
  end
end


adjust_aircon(current_temp, desired_temp, working_air_cond)