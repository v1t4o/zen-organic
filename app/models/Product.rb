require 'csv'

class Product
  attr_reader :supplier, :name, :price

  def initialize(supplier:, name:, price:)
    @supplier = supplier
    @name = name
    @price = price
  end

  def self.all
    read_products
  end
  
  private

  def self.read_products
    products = []
    table_products = CSV.parse(File.read('./tmp/produtos.csv'), headers: true, col_sep: ',')
    table_products.each.map { |product| products << Product.new(supplier: product['Fornecedor'], name: product['Descrição'], price: product['Preço'].to_i)}
    
    return products
  end
end