array = [1, 2, 3, 4, 5, 6]

selection = array.select do |a|
  a >= 4
end

puts selection

hash = { 0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três' }

puts 'Selecionando keys com valor maior que 0'

selection_key = hash.select do |key, value|
  true
end

puts selection_key
