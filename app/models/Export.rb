load './app/models/Order.rb'

class Export
  def self.save_file
    orders = Order.all
    File.open("orders.csv", "w") do |f|
      f.write("Nome do Cliente;Produto pedido;Produto encontrado;Quantidade;Valor Unitário;Valor Total\n")   
      orders.each do |order|
        f.write("#{order.client_name};#{order.ordered_product};#{order.product_found};#{order.quantity};#{order.unit_price};#{order.total_price}\n")   
      end
    end
  end
end