puts "Введіть число n:"
n = gets.chomp.to_i

prime_numbers = []
(2..n).each do |num|
  is_prime = true
  (2..Math.sqrt(num)).each do |divisor|
    if num % divisor == 0
      is_prime = false
      break
    end
  end
  if is_prime
    prime_numbers << num
  end
end

puts "Прості числа до #{n}:"
puts prime_numbers.join(', ')
# frozen_string_literal: true

