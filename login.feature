            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Esquema do Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário <email> e a <senha>
            Então deve rediracionar para a tela de checkout

            Exemplos:
            | usuario             | senha        |
            | "joao@ebac.com.br"  | "senhas@123" |
            | "maria@ebac.com.br" | "senhas@123" |
            | "jose@ebac.com.br"  | "senhas@123" |

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário inválido 'zeh@ebac.com.br' e a senha 'senha@123'
            Então deve exibir uma mensagem de alerta 'Usuário ou senha inválidos'