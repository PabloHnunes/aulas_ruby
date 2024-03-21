# frozen_string_literal: true

numbers = [1, 2, 3]

numbers.map! do |a|
  a**2
end

puts numbers

hash = { 'Primeiro' => '1', 'Segundo' => '2', 'Terceiro' => '3' }

loop do
  break if hash.length == 3

  puts 'Informe uma propriedade para ser chave'
  print 'Chave: '
  key = gets.chomp.to_s

  puts 'Informe um valor para a chave'
  print 'Valod: '
  value = gets.chomp

  hash.store(key, value)
end

hash.each do |key, value|
  puts "A chave é #{key} e seu valor #{value}"
end

numbers = { a: 10, b: 30.2, c: 20, d: 25, e: 15 }

max = numbers.select { |key, value| value == numbers.values.max } # rubocop:disable Lint/UnusedBlockArgument

max.each do |key, value|
  puts "Chave #{key} e valor #{value} é o maior valor do hash!"
end
