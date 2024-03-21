class Car
    def get_km text
      puts "Esse carro está andando à #{find_km(text)}."
    end

    private

    def find_km text
        text.match(/\d{1,}km\/h/)
    end
end


car = Car.new


puts "Qual o seu carro e a quantos km ele está andando?"
print "informe: "
text = gets.chomp.to_s

car.get_km(text)
