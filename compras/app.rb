require_relative 'product'
require_relative 'market'

products = []

products.push(Product.new('Queijo', 10.0,3), Product.new('Presunto', 7.8, 5), Product.new('Pão francês', 0.70, 50))

market = Market.new(products)

market.resume

market.buy('Queijo', 1)
market.buy('Presunto', 2)
market.buy('Pão francês', 10)
market.buy('Açucar', 1)

market.resume
