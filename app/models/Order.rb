require 'io/console'
load './app/models/Product.rb'

class Order
  attr_accessor :client_name, :ordered_product, :product_found, :quantity, :unit_price, :total_price

  def initialize(client_name: , ordered_product: , product_found: '', quantity: , unit_price: '', total_price: '')
    @client_name = client_name
    @ordered_product = ordered_product
    @product_found = product_found
    @quantity = quantity
    @unit_price = unit_price
    @total_price = total_price
  end

  def self.all
    verify_orders
  end

  def self.verify_orders
    products = Product.all
    orders = import_orders
  
    orders.each do |order|
      products.each do |product|
        if product.name.downcase.include?(order.ordered_product.downcase)
          order.product_found = product.name
          order.unit_price = product.price
          order.total_price = product.price * order.quantity
        end
      end
    end
    return orders
  end
  
  private

  def self.import_orders
    orders = read_orders
  
    orders_products = []
    orders.each do |order|
      order_guarded = {}
      order.each_with_index do |line, index|
        if index == 0
          order_guarded[:client_name] = line.chomp
        else
          item = line.split(' - ')
          order_guarded[:quantity] = item[0].chomp.to_i
          order_guarded[:ordered_product] = item[1].chomp
          orders_products << Order.new(client_name: order_guarded[:client_name], quantity: order_guarded[:quantity], ordered_product: order_guarded[:ordered_product])
        end
      end
    end
  
    return orders_products
  end

  def self.read_orders
    orders = []
    line = ''
    orders_line = []
    IO.readlines('tmp/whatsapp.txt').each do |line|
      if line.chomp != ''
        orders_line << line
      else
        orders << orders_line
        orders_line = []
      end
    end
  
    return orders
  end
end