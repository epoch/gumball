input = gets.chomp

def question?(input)
  input.end_with?("?")
end

def statement?(input)
  input.length > 0
end

def shouting?(input)
  !input.empty? && input.upcase == input
end


if question?(input)
  puts "sure"
elsif shouting?(input)
  puts "woah, chill out!"
elsif statement?(input)
  puts "Fine. be that way"
else
  puts "yeah, whatever"
end