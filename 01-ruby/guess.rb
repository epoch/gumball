print "enter the max number: "
max = gets.to_i

# generate a secret number
secret = Random.rand(max + 1)

print "pretty please enter your guess: "
guess = gets.to_i

while guess != secret

  puts "That's not correct. Bonehead"

  if guess > secret # Too high
    puts "Guess lower"
  elsif guess < secret # too low
    puts "guess higher"
  end

  guess = gets.to_i

end

puts "you guessed it! good job!"