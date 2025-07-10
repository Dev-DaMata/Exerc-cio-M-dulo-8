            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu queira comprar um produto e esteja na pagina para concluir o meu cadastrado

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu cadastrar todos os campos marcados com asteriscos
            Então o botão de 'FINALIZAR COMPRAR' fica ativo.

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu adicionar um <email> com o formato inválido
            Então o sistema deve retornar uma <mensagem>

            Exemplos:
            | email             | mensagem          |
            | "joaoebac.com.br" | "email inválido!" |
            | "maria@ebac"      | "email inválido!" |
            | ".com.br"         | "email inválido!" |

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu preencher as minhas informações deixando um ou mais campos em branco
            Então o sistema deve exibir uma mensagem de alerta.