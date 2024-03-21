class Product
    attr_accessor :name, :price, :stock

    def initialize(name, price, stock)
      @name = name
      @price = price
      @stock = stock
    end

    def check
      puts 'Status do produto:'
      puts "Nome: #{@name}"
      puts "Valor: #{@price} - Qtd: #{@stock}"
    end

    def addStock(qtd)
      @stock += qtd
    end

    def removeStock(qtd)
      if @stock - qtd >= 0
        @stock -= qtd
      else
        puts 'Produto sem estoque suficiente.'
      end
    end
end
