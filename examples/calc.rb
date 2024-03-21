# frozen_string_literal: true

result = ''
operation = nil

loop do
  puts 'Quais operações deseja fazer?'
  puts 'Opções'
  puts '1- Somar'
  puts '2- Subtrair'
  puts '3- Dividir'
  puts '4- Multiplicar'
  puts '0- Sair'

  print 'Opção: '
  option = gets.chomp.to_i

  operation = case option
              when 1
                :+
              when 2
                :-
              when 3
                :/
              when 4
                :*
              when 0
                break
              end
  print 'Digite o primeiro número: '

  first_number = gets.chomp.to_i

  break unless first_number.is_a?(Integer)

  print 'Digite o segundo número: '

  secund_number = gets.chomp.to_i

  break unless secund_number.is_a?(Integer)

  puts "Resultado : #{first_number.send(operation, secund_number)}" if first_number and secund_number
  operation = nil
end

puts 'Número digitado inválido!' if result == '' and !operation.nil?
