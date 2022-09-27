create database agencia;

/**************CRIANDO TABELAS**************/
use agencia;
CREATE TABLE CLIENTE_LOGIN(
	ID_Cliente INT not null auto_increment,
    #ID_Passagem int,
    NOME_CLIENTE VARCHAR(50) not null ,
    CPF_Cliente varchar(20) not null,
    RG_Cliente varchar(20) not null,
    Email_Cliente varchar(50) not null,
    Telefone_CLiente varchar(20) not null,
    Data_Nascimento date not null,
    Senha varchar(20) not null,
    PRIMARY KEY(ID_Cliente) 
);

CREATE TABLE Passagem 
( 
 ID_Passagem INT auto_increment ,  
 ID_Voo INT,  
 Classe INT,  
 num_assento INT,
 PRIMARY KEY(ID_Passagem),
 FOREIGN KEY (ID_Voo) REFERENCES Voo (ID_Voo)
); 

CREATE TABLE VOO(
	ID_Voo INT auto_increment,
    Hora_Saida varchar(10),
    Hora_Chegada varchar(10),
    Local_Saida varchar(50),
	Local_Chegada varchar(50),
    PRIMARY KEY(ID_Voo)
);

CREATE TABLE Pedido 
( 
 ID_Pedido INT auto_increment,  
 ID_Passagem INT,  
 ID_Cliente INT,  
 Data_Pedido INT,  
 Valor_Total INT,
 PRIMARY KEY(ID_Pedido),
 FOREIGN KEY (ID_Passagem) REFERENCES Passagem (ID_Passagem),
 FOREIGN KEY (ID_Cliente) REFERENCES Cliente_login (ID_Cliente)
);


/*****************MUDANÇAS************************************/
ALTER TABLE Cliente_login MODIFY COLUMN id_cliente int  auto_increment;
ALTER TABLE Passagem MODIFY COLUMN id_Passagem  int  auto_increment;
ALTER TABLE VOO MODIFY COLUMN id_Voo  int  auto_increment;
ALTER TABLE Pedido MODIFY COLUMN id_Pedido  int  auto_increment;
ALTER TABLE Cliente_login MODIFY COLUMN data_Nascimento date  null;

ALTER TABLE Cliente_Login
ADD Endereco VARCHAR(30) not null,
add Estado VARCHAR(20) not null,
add Cidade varchar(20) not null ;
/*************************************************************/




   


