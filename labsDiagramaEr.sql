CREATE TABLE [Dados Gerais do Comprador] (
  [ID_Comprador] int,
  [CPF/ RNE (ID)] char(11),
  [Nome] varchar(255),
  [Sobrenome] varchar(255),
  [Email] varchar(255),
  [Usuario] varchar(255),
  [Data Nascimento] date,
  [Sexo] varchar(26),
  [Celular] varchar(15),
  PRIMARY KEY ([ID_Comprador])
);

CREATE TABLE [Endereço] (
  [ID_Endereço] int,
  [Rua] varchar(255),
  [Numero] int,
  [Bairro] varchar(255),
  [Complemento] varchar(255),
  [Cidade] varchar(255),
  [Estado] varchar(255),
  [Pais] varchar(255),
  [CEP] char(8),
  PRIMARY KEY ([ID_Endereço])
);

CREATE TABLE [Dados Pacote] (
  [ID_Pacote] int,
  [Descrição] text,
  [Pacote(Individual X familia)] varchar(255),
  [Periodo(Trimestral X a definir)] varchar(255),
  [Valor] numeric,
  PRIMARY KEY ([ID_Pacote])
);

CREATE TABLE [Dados Pagamento] (
  [ID_Pagamento] int,
  [Tipo de Pagamento] varchar(255),
  [Chave Pix] varchar(255),
  [Cartão de Crédito/Débito] varchar(255),
  [Nome Impresso] varchar(255),
  [Numero Cartão] char(16),
  [Data Vencimento] date,
  [CVV] char(3),
  [Boleto] varchar(255),
  PRIMARY KEY ([ID_Pagamento])
);

CREATE TABLE [Ordem] (
  [ID_Ordem] int,
  [ID_Comprador] int,
  [ID_Pacote] int,
  [ID_Pagamento] int,
  PRIMARY KEY ([ID_Ordem]),
  CONSTRAINT [FK_Ordem.ID_Pagamento]
    FOREIGN KEY ([ID_Pagamento])
      REFERENCES [Dados Pagamento]([ID_Pagamento]),
  CONSTRAINT [FK_Ordem.ID_Comprador]
    FOREIGN KEY ([ID_Comprador])
      REFERENCES [Dados Gerais do Comprador]([ID_Comprador])
);

