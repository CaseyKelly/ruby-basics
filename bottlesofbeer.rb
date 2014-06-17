puts "Let's sing 99 bottles of beer on the wall!  Tell me what number to start with.  Say 'sing' then the number you want to go to."

playing = true
while playing

  answer = gets.chomp

  if answer == ""
    puts "I need to know how many bottles"

  elsif answer.split.first == "sing" && answer.split.last.to_i > 0
    num_now = answer.split.last.to_i

    while num_now > 2
      puts num_now.to_s + ' bottles of beer on the wall, ' +
               num_now.to_s + ' bottles of beer!'
      num_now = num_now - 1
      puts 'Take one down, pass it around, ' +
               num_now.to_s + ' bottles of beer on the wall!'
    end

    if num_now == 2
      puts "2 bottles of beer on the wall, 2 bottles of beer!"
      puts "Take one down, pass it around, 1 bottle of beer on the wall!"
    end

    puts "1 bottle of beer on the wall, 1 bottle of beer!"
    puts "Take one down, pass it around, no more bottles of beer on the wall!"
    playing = false

  else
    puts "You have to say 'sing' and a number.  Run program again"
    playing = false
  end

end
