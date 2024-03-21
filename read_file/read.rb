puts '----Lista de compras---'

file = File.open('example.txt')


file.each do |line|
    puts line
end
