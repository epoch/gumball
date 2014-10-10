db = File.new('database.txt', 'a+')

print "Input person and save to a file (y/n)"
response = gets.chomp.downcase

while response == 'y'
  print "Enter name, age, gender: "

  db.puts(gets.chomp) # write to database.txt file

  print "Input person and save to a file (y/n)"
  response = gets.chomp.downcase
end

db.close

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{name} is #{age} years old and #{gender}."
  end
end
# reading
# db = File.new('database.txt', 'r')
# db.each do |line|
#   puts line
# end
# db.close
people = []

File.foreach('database.txt') do |line|
  name, age, gender = line.chomp.split(',')
  people << Person.new(name, age, gender)
  # person_array = line.chomp.split('|')
  # person = Person.new(person_array[0], person_array[1], person_array[2])
  # people << person
end

require 'pry'
binding.pry
# people is array of Person objects
people.each do |person|
  puts person.to_s
end
