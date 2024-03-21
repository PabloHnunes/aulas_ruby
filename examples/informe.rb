require 'date'

#Digite seu nome:
print 'Digite seu nome: '

name = gets.chomp

#Digite seu sobrenome

print 'Digite seu sobrenome: '

second_name = gets.chomp

#Digite sua data de nascimento

print 'Digite sua data de nascimento: '

date_birth = gets.chomp

date_birth = Date.strptime(date_birth,"%d/%m/%Y")

years = Date.today.year - date_birth.year

years -= 1 if Date.today < date_birth + years * 365

p "Olá #{name} #{second_name}, você tem #{years} de idade, seja bem vindo ao sistema!"
