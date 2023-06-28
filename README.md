
# Challenge Backend Java

Olá, se você está recebendo este TESTE é porque você passou pela primeira etapa dessa jornada, Parabéns! Gostaríamos que você participasse deste DESAFIO para que possamos testar suas habilidades, será um grande diferencial e um prazer enorme em participar desta fase com você, então vamos lá!

## Desafio

Seu objetivo é criar um micro-serviço (API), seguindo os padrões restful que se chamará `ORDERS`. Esse serviço será responsável por criar e atualizar pedidos. 

Para isso você precisára usar duas APIS:

- PRODUCTS: https://fakestoreapi.com/products

- USERS: https://fakestoreapi.com/users

## Pré-Requisitos:

- Deverá chamar a API de `PRODUCTS`, para pegar os produtos
- Deverá chamar a API de `USERS` para pegar o usuario 
- Deverá calcular o total do pedido para um cliente e salvar em um banco de dados.
Obs: o id do pedido deve ser salvo no padrao UUID e os campos devem estar com os titulos em português.


exemplo: input
```json
{
    "userId": 1,
    "products": [{ "id": 1 }, { "id": 2 }]
}
```

exemplo output
```json
{
    "id": "b888cb1d-7b22-4d9b-b4f0-ce4e31d1f6aa",
    "userId": 1,
    "status": "PENDING",
    "totalPrice": 132.25,
    "items": [
        {
            "id": 1,
            "price": 109.95,
            "amount": 1,
            "partialAmount": 22.3
        },
        {
            "id": 2,
            "price": 22.3,
            "amount": 1,
            "partialAmount": 22.3
        }
    ]

}
```

- Deverá atualizar o `status` do pedido.

exemplo input

```json
{
    "id": "b888cb1d-7b22-4d9b-b4f0-ce4e31d1f6aa",
    "userId": 1,
    "status": "CONCLUDED"
}
```

- Deverá adicionar itens ao pedido

Caso a quantidade de itens iguais sejam > 1, deverá somar e salvar somente como 1 item incrementando a quantidade.

exemplo input

```json
{
    "id": "b888cb1d-7b22-4d9b-b4f0-ce4e31d1f6aa",
    "userId": 1,
    "items": [
        {
            "id": 1,
            "price": 109.95
        },
        {
            "id": 1,
            "price": 109.95
        },
    ]
}
```

exemplo output
```json
{
    "id": "b888cb1d-7b22-4d9b-b4f0-ce4e31d1f6aa",
    "userId": 1,
    "status": "PENDING",
    "totalPrice": 219.9,
    "items": [
        {
            "id": 1,
            "price": 109.95,
            "amount": 2,
            "partialAmount": 219.9
        }
    ]

}
```

## Entrega

Faça o fork do projeto para algum repositório público e nos envie assim que concluir o desafio.

## O que será avaliado
- Requisitos funcionais
- Padrão de projeto
- Utilização dos recursos disponíveis no spring-boot
- Conhecimento da linguagem, orientação a objetos
- Testes unitários

## Será um diferencial

- Docker
- Arquitetura de Sofware
- Testes de Componentes



Boa sorte!