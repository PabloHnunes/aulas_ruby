names = %w[Joãozinho Manuel Juca]

name = 'Pablo H H Nunes'

names.each do |name|
  puts name
end

puts name

aulas = { 'Aula 1' => 'Liberada', 'Aula 2' => 'Liberada', 'Aula 3' => 'Liberada', 'Aula 4' => 'Liberada',
          'Aula 5' => 'Liberada' }

aulas.each do |key, value|
  puts "#{key} #{value}"
end
