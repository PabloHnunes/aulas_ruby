number_regex = -> (text){text.match(/\(\d{2}\) \d{5}-\d{4}/) }


def find_number(text, &block)
    @number = block.call(text)
    if @number
      puts "Seu número de telefone foi registrado: #{@number[0]}"
    else
      puts "Número de telefone não encontrado na mensagem."
    end
end


puts "Envie sua mensagem de apresentação com seu numero para contato"
print "mensagem: "
text = gets.chomp.to_s


find_number(text, &number_regex)
