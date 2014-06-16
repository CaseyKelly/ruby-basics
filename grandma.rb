puts "Be polite, say something to your grandma"
greeting = gets.chomp

if greeting == greeting.upcase
  puts "NO, NOT SINCE "+ (rand(19)+1930).to_s
else greeting == greeting.downcase
  puts "HUH, SPEAK UP SONNY!"
end