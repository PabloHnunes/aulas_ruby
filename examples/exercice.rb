require 'cpf_cnpj'

def calc
  puts 'Olá informe um número para ser usado no calculo do expoente?'
  print 'Número: '
  number1 = gets.chomp.to_i

  unless number1.is_a?(Integer)
    puts 'Número inválido.'
    return
  end

  puts 'Informe a potência que deve ser elevado?'
  print 'Número: '

  number2 = gets.chomp.to_i

  unless number2.is_a?(Integer)
    puts 'Número inválido.'
    return
  end

  puts "Resultado do calculo: #{number1**number2}"
  puts ''
end

def login
  puts 'Informe seu Cpf?'
  print 'CPF: '
  cpf = gets.chomp.to_s

  if CPF.valid?(cpf)
    puts 'Bem vindo ao sistema, vamos calcular?'
    calc
  else
    puts 'Cpf inválido ou não cadastrado.'
  end
end

login
