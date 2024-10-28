# language: pt
  @regressivo
  Funcionalidade: Validar contrato ao realizar um cadastro bem-sucedido de entrega
    Como usuário da API
    Quero Cadastrar uma nova entrega bem-sucedida
    Para que eu consiga validar se o contrato está conforme o esperado
    Cenario: Validar contrato de cadastro bem sucedido de entrega
      Dado que eu tenha os seguintes dados da entrega:
        | campo            |valor            |
        | numeroPedido     |1                |
        | nomeEntregador   |Ana Silva        |
        | statusEntrega    |EM_SEPARACAO     |
        | dataEntrega      |2024-08-22       |
      Quando eu enviar a requisição para o endpoint "/entregas" de cadastro de entregas
      Então o status code da resposta deve ser 201
      E que o arquivo de contrato esperado é o "Cadastro bem-sucedido de entrega"
      Então a resposta da requisição deve estar em conformidade com o contrato selecionado
