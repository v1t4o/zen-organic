load './app/models/Export.rb'

puts '------------------------------'
puts '|        Zen Orgânicos       |'
puts '------------------------------'

puts 'Olá, Jacir.'
puts 'Estamos conferindo os pedidos.'
puts ''

Export.save_file

puts 'Arquivo gerado com sucesso!'
puts ''
puts 'Verifique o arquivo de saída na raiz do projeto.'
puts ''
puts 'Se tiver algum problema, ajuste o arquivo das mensagens do whatsapp 
e rode bin/run novamente que ele automaticamente sobrescreve o arquivo
gerado anteriormente.'