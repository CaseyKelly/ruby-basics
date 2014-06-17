require 'csv'
require 'date'
people = CSV.read('birthday_data.csv')

puts "Tell me a first or last name and I'll give you their birthday"

name = gets.chomp

people.each do |p|
  puts p[1] if p.include? name
  puts p[2] if p.include? name
  if p.include? name
    year, month, day = p[2].split('/')
    age = ((Time.now - Time.local(year,month,day))/60/60/24/365).to_i
    puts age
  end

end
