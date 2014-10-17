require 'pry'
require 'pry-byebug'

def i_love_cake
  puts "cake and more cake"

  puts "haha"

  puts "lol"
end

binding.pry

puts 'muffin'

favourite = 'pudding'

puts 'cupcakes'

puts 'pudding'

i_love_cake()

lunch = "muffin cupcakes pudding".split(' ')



lunch.each do |l|
  puts "today's lunch is #{l}"
end

