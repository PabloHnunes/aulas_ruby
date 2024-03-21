require "cpf_cnpj"


capitalize = -> (name){ puts name.capitalize}

def capitalize_name(name, &block)
    block.call(name)
end


capitalize_name('pablo', &capitalize)
capitalize_name('junior', &capitalize)


module Person
    class Juridic
            def add(fantasy_name, cnpj)
                puts '-' * 100
                puts "Pessoa Jurídica adicionada"
                puts "nome: #{fantasy_name}"
                puts "CNPJ: #{cnpj}"
                puts '-' * 100
            end
    end

    class Physical
          def add(name, cpf)
            puts '-' * 100
            puts "Pessoa Fisíca adicionada"
            puts "nome: #{name}"
            puts "CPF: #{cpf}"
            puts '-' * 100
          end
    end
end


puts "Informe o tipo de cadastro 'Fisíco' ou 'Jurídico':"
puts "1- Jurídico"
puts "2- Fisíco"
puts "0- Saír"

print 'Opção: '
type = gets.chomp.to_i

if type == 1
  person = Person::Juridic.new
  puts "Informe o nome fantasia da pessoa jurídica"
  print "nome: "
  name = gets.chomp
  puts "Informe o CNPJ da pessoa jurídica"
  print "CNPJ: "
  cnpj = gets.chomp

  unless CNPJ.valid?(cnpj)
    puts "CNPJ informado inválido."
    return
  else
    person.add(name,cnpj)
  end

elsif type == 2
  person = Person::Physical.new
  puts "Informe o nome da pessoa fisíca"
  print "nome: "
  name = gets.chomp
  puts "Informe o CPF da pessoa fisíca"
  print "CPF: "
  cnpj = gets.chomp

  unless CPF.valid?(cnpj)
    puts "CPF informado inválido."
    return
  else
    person.add(name,cnpj)
  end
else
  puts "Tenha um bom dia!"
end
