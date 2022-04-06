# **Zen Orgânicos - Focus NFe**

## **Conceito**

Script feito para gerar uma planilha de pedidos automatizado

## **Passos para uso**

- **Primeiro**, exporte a planilha de produtos como .CSV, conforme imagem abaixo, deve ser gerado um arquivo chamado _produtos.csv_

[<img src="/examples/images/export.gif"/>](/examples/images/export.gif)

- **Segundo**, copie o arquivo _produtos.csv_ baixado para a pasta _tmp_ do projeto

    - Link da planilha de exemplo: <a href="/examples/produtos.csv">produtos.csv</a>

- **Terceiro**, crie o arquivo _whatsapp.txt_ e copie a mensagem do grupo do whatsapp conforme o padrão descrito abaixo. Lembre-se de que você deverá ajustar as mensagens do grupo do whatsapp para o padrão descrito abaixo:

    ```
    João
    1 - Pão integral

    Victor
    1 - Cebolinha
    ```

    - Linha em branco quando for adicionar o pedido de outro cliente, depois da linha em branco recomeça o padrão descrito acima

    - Link do arquivo de exemplo: <a href="/examples/whatsapp.txt">whatsapp.txt</a>

- **Quarto**, caso algum pedido não tenha encontrado o produto correspondente ao abrir a planilha, basta verificar qual item do cliente faltou e ir até o arquivo _whatsapp.txt_, buscar pelo produto específico e alterar o nome conforme a planilha de produtos utilizada

    - É importante passar para os clientes uma versão em PDF da planilha e instruí-los a copía-los o nome do produto, assim evita-se problemas de inconsistência

    - Você também pode instruí-los a só escrevem o primeiro nome do produto (com exceção dos produtos com nomes compostos), tomando o cuidado com o plural. Não há necessidade de informar a gramatura, cor, etc, já que a descrição da planilha de produtos informa isso

## **Para execução do sistema**

```bash
bin/run
```

## **Arquivo Gerado**

- O script vai salvar na raiz do projeto o arquivo _orders.csv_
    - Link do arquivo de exemplo: <a href="/examples/orders.csv">orders.csv</a>

- Basta abrir com seu editor de planilhas preferido, ou realizar a importação para o Google Planilhas, lembrando de informar que o delimitador é o ponto-e-vírgula ";"

[<img src="/examples/images/import.gif"/>](/examples/images/import.gif)

