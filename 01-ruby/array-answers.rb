days_of_the_week = %w{ Monday Tuesday Wednesday Thursday Friday Saturday Sunday}

p days_of_the_week

# days_of_the_week.unshift(days_of_the_week.pop)

temp_day = days_of_the_week.pop
days_of_the_week.unshift(temp_day)

p days_of_the_week

# days_of_the_week = days_of_the_week[-3..-1]

p days_of_the_week
# days_of_the_week = [%w{ Monday Tuesday Wednesday Thursday Friday}, %w{ Saturday Sunday}]
days_of_the_week = [['Monday', 'Tuesday','Wednesday','Thursday', 'Friday'], ['Good Day','Saturday', 'Sunday']]

p days_of_the_week

days_of_the_week.shift

p days_of_the_week

days_of_the_week.flatten!
p days_of_the_week

new_days_of_week = days_of_the_week.map do |day|
  "#{day}!!!!"
end

p new_days_of_week

list = "monday tuesday Wednesday thursday".split(' ')

p list