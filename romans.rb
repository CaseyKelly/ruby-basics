print "Want to convert any roman numeral to a number? Type a number:"
number = gets.chomp.to_i
roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
real_number = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

roman_array = []

while number > 0
  divisor = real_number.shift
  roman_array.push(roman.shift * (number / divisor))
  number = (number % divisor)
end

puts roman_array.join
