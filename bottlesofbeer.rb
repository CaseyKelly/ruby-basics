puts "Let's sing 99 bottles of beer on the wall!  Tell me what number to start with.  Say 'sing' then the number you want to go to."

answer = gets.chomp
num_at_start = answer.split.last.to_i
num_now = num_at_start


if answer == ""
  puts "I need to know how many bottles to sing"
  answer = gets.chomp
else answer != "sing #{num_at_start}"
  puts "goodbye"
end

while num_now > 2
  puts num_now.to_s + ' bottles of beer on the wall, ' +
    num_now.to_s + ' bottles of beer!'
  num_now = num_now - 1

  puts 'Take one down, pass it around, ' +
    num_now.to_s + ' bottles of beer on the wall!'
end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"

