            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com o meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu encontrei o meu produto

            Esquema do Cenário: Seleção de cor, tamanho e quantidade é obrigatoria
            Quando Eu selecionar a <cor>, o <tamanho> e <quantidade>
            Então o botão 'Comprar' deve ficar disponivel

            Exemplos:
            | cor      | tamanho | quantidade |
            | "Marrom" | "XS"    | "1"        |
            | "Rosa"   | "S"     | "2"        |
            | "Marrom" | "M"     | "4"        |
            | "Marrom" | "L"     | "1"        |
            | "Marrom" | "XL"    | "3"        |

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a quantidade até 10 produtos
            Então o botão 'Comprar' deve ficar disponivel 

            Cenário: Quando clicar no botão 'limpar' deve voltar ao estado original 
            Quando eu selecionar todas as opções do produto e clicar no botõ 'Limpar'
            Então deve limpar todas as opções selecionadas do produto 