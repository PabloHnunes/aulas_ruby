class Market

  def initialize(products)
        @products = products
  end

  def resume
    puts 'Produtos disponíveis e suas quantidades com valor: '
    @products.each do |product|
      puts "#{product.name} - Qtd:#{product.stock} - Preço: R$#{product.price}"
    end
  end

  def buy(product_name, qtd)
    prod_index = @products.index { |product| product.name == product_name }

    if prod_index.nil?
      puts 'Produto não encontrado.'
    else
      product = @products[prod_index]
      product.removeStock(qtd)
    end
  end
end
