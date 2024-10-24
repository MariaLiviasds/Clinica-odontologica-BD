-- Inserção de dados na tabela do paciente
USE clinica2024;

-- Inserção de dados na tabela seguro
insert into seguro (idseguro, nomeSeguradora, numeroApolice, cobertura) 
values 
(1, 'Bradesco Saúde', 'APOLICE123456', 'Cobertura completa de saúde'),
(2, 'Unimed', 'APOLICE123457', 'Cobertura parcial de saúde'),
(3, 'Hapvida', 'APOLICE123458', 'Cobertura de urgência e emergência'),
(4, 'Hospital Português', 'APOLICE123459', 'Cobertura de internação'),
(5, 'Hapvida', 'APOLICE123460', 'Cobertura de consultas e exames'),
(6, 'Unimed', 'APOLICE123461', 'Cobertura de saúde geral'),
(7, 'Hospital Português', 'APOLICE123462', 'Cobertura completa'),
(8, 'Saúde Caixa', 'APOLICE123463', 'Cobertura de emergências'),
(9, 'Golden Cross', 'APOLICE123464', 'Cobertura de exames e consultas'),
(73, 'Bradesco Saúde', 'APOLICE123465', 'Cobertura para internação e emergência');

-- Inserção de dados na tabela de enderecopaciente
insert into enderecopaciente (idendereco, UF, cidade, bairro, rua, numero, CEP)
values
(10, 'PE', 'Recife', 'Boa Viagem', 'Avenida Conselheiro Aguiar', '100', '51211-000'),
(20, 'PE', 'Recife', 'Pina', 'Rua do Sol', '200', '51220-000'),
(30, 'PE', 'Olinda', 'Varadouro', 'Rua da Luz', '300', '53020-000'),
(40, 'PE', 'Recife', 'Santo Amaro', 'Rua da Aurora', '400', '50050-000'),
(50, 'PE', 'Recife', 'Jardim São Paulo', 'Rua Siqueira Campos', '500', '51230-000'),
(60, 'PE', 'Recife', 'Graças', 'Rua do Comércio', '600', '51030-000'),
(70, 'PE', 'Olinda', 'Carmo', 'Rua da Paz', '700', '53050-000'),
(80, 'PE', 'Recife', 'San Martin', 'Avenida Boa Viagem', '800', '51010-000'),
(90, 'PE', 'Recife', 'Cordeiro', 'Rua Nova', '900', '51020-000'),
(100, 'PE', 'Olinda', 'Casa Caiada', 'Rua das Flores', '1000', '53030-000');

-- Inserção de dados na tabela de paciente
insert into Paciente (Cpf, nome, dataNasc, telefone, email, sexo, seguro_idseguro, enderecoPaciente_idendereco)
values 
('111.111.111-01', 'Maria Livia Soares da Silva', '1990-03-15', '81991111028', 'mlss@pe.senac.br', 'F', 1, 10),
('222.222.222-02', 'Maria Gabriella da Silva Calado', '1995-07-10', '81996666033', 'mgsc@pe.senac.br', 'F', 2, 20),
('333.333.333-03', 'João Pedro dos Santos', '1985-01-25', '81993222038', 'jpds@pe.senac.br', 'M', 3, 30),
('444.444.444-04', 'Ana Clara Oliveira', '2000-11-30', '81992222038', 'aco@pe.senac.br', 'F', 4, 40),
('555.555.555-05', 'Danilo Soares Farias', '1985-12-21', '81999999036','dsf@pe.senac.br', 'M', 5, 50),
('666.666.666-06', 'Lucas Pereira', '1988-01-10', '81995555050', 'lucas@pe.senac.br', 'M', 1, 60),
('777.777.777-07', 'Sofia Almeida', '1992-04-15', '81996666044', 'sofia@pe.senac.br', 'F', 2, 70),
('888.888.888-08', 'Ricardo Santos', '1980-09-20', '81993222099', 'ricardo@pe.senac.br', 'M', 3, 80),
('999.999.999-09', 'Gabriela Costa', '1986-05-22', '81992222055', 'gabriela@pe.senac.br', 'F', 4, 90),
('000.000.000-00', 'Fernando Oliveira', '1993-12-05', '81999999001', 'fernando@pe.senac.br', 'M', 73, 100);

-- Inserção de dados na tabela de cargo
insert into cargo (cbo, nome_cargo)
values 
(88, 'Dentista'),
(288, 'Auxiliar'),
(388, 'Recepcionista');

-- Inserção de dados na tabela do profissional
USE Clinica2024;
insert into Profissional (cpf_profissional, nome, sexo, dataNasc, email, telefone, especializacao, numRegProfissional, salario, cargo_cbo)
values 
('555.555.555-32', 'Lucas Vinícius Braga', 'M', '1990-07-20', 'lucas.braga@pe.senac.br', '81995555032', 'Odontopediatria', '160', 2500, 88),
('666.666.666-33', 'Fernanda Almeida', 'F', '1985-10-15', 'fernanda.almeida@pe.senac.br', '81996666012', 'Periodontista', '161', 3000, 88),
('777.777.777-34', 'Carlos Henrique', 'M', '1992-11-12', 'carlos.henrique@pe.senac.br', '81993222009', 'Pediatria', '162', 2800, 88),
('888.888.888-35', 'Juliana Costa', 'F', '1988-05-14', 'juliana.costa@pe.senac.br', '81992222080', 'Clinico', '163', 3200, 88),
('999.999.999-36', 'Roberto Ferreira', 'M', '1980-03-22', 'roberto.ferreira@pe.senac.br', '81999999090', 'Cirurgião Dentista', '164', 3500, 88),
('111.111.111-37', 'Ana Paula', 'F', '1989-06-30', 'ana.paula@pe.senac.br', '81995555101', 'Clínica Geral', '165', 2400, 88),
('222.222.222-38', 'Rafael Lima', 'M', '1987-04-10', 'rafael.lima@pe.senac.br', '81996666102', 'Cirurgia', '166', 4000, 88),
('333.333.333-39', 'Isabela Santos', 'F', '1991-08-01', 'isabela.santos@pe.senac.br', '81993222103', 'Cirurgia', '167', 3700, 88),
('444.444.444-40', 'Mariana Oliveira', 'F', '1995-09-19', 'mariana.oliveira@pe.senac.br', '81992222104', 'Clinico', '168', 2600, 88),
('555.555.555-41', 'Fernando Almeida', 'M', '1982-12-02', 'fernando.almeida@pe.senac.br', '81999999105', 'Odontopediatria', '169', 3200, 88);

-- Inserção de dados na tabela laboratorioExterno
insert into laboratorioExterno (idlaboratorioExterno, nome, telefone, historicosTrabalhos, enderecoLaboratorio_idenderecoLaboratorio)
values 
(177, 'Laboratório São Marcos', '81998888222', 'Exames clínicos complementares para odontologia', '111'),
(277, 'Laboratório Vida', '81997777111', 'Exames de imagem para odontologia', '211'),
(377, 'Laboratório 4U', '81996666044', 'Exames toxicológicos para tratamento odontológico', '311'),
(477, 'Laboratório Boa Saúde', '81995555055', 'Exames de sangue e urina para diagnósticos odontológicos', '411'),
(577, 'Laboratório Medicina & Saúde', '81994444000', 'Exames gerais para suporte odontológico', '511'),
(677, 'Laboratório Vida Saudável', '81993333000', 'Exames de sangue para tratamento odontológico', '611'),
(777, 'Laboratório Saúde em Dia', '81992222000', 'Exames de diagnóstico por imagem para odontologia', '711'),
(877, 'Laboratório X', '81991111000', 'Análises clínicas e exames odontológicos', '811'),
(977, 'Laboratório Omega', '81990000111', 'Exames genéticos relacionados a saúde bucal', '911'),
(1077, 'Laboratório Prime', '81988999222', 'Exames especializados para odontologia', '1011');

-- Inserção de dados na tabela enderecoLaboratorio
insert into enderecoLaboratorio (idenderecoLaboratorio, UF, cidade, bairro, rua, numero, CEP)
values 
(111,'PE', 'Recife', 'Boa Viagem', 'Avenida Boa Viagem', '100', '51200-000'),
(211,'PE', 'Recife', 'Pina', 'Rua do Sol', '200', '51220-000'),
(311,'PE', 'Olinda', 'Varadouro', 'Rua da Luz', '300', '53020-000'),
(411,'PE', 'Recife', 'Santo Amaro', 'Rua da Aurora', '400', '50050-000'),
(511,'PE', 'Recife', 'Jardim São Paulo', 'Rua Siqueira Campos', '500', '51230-000'),
(611,'PE', 'Recife', 'Graças', 'Rua do Comércio', '600', '51030-000'),
(711,'PE', 'Olinda', 'Carmo', 'Rua da Paz', '700', '53050-000'),
(811,'PE', 'Recife', 'San Martin', 'Avenida Boa Viagem', '800', '51010-000'),
(911,'PE', 'Recife', 'Cordeiro', 'Rua Nova', '900', '51020-000'),
(1011,'PE', 'Olinda', 'Casa Caiada', 'Rua das Flores', '1000', '53030-000');

-- Inserção de dados na tabela procedimento
insert into procedimento (idprocedimento, nome, descricao, custo, Profissional_cpf_profissional, laboratorioExterno_idlaboratorioExterno)
values 
(155, 'Consulta Odontológica', 'Consulta inicial para avaliação dental', 150.00, '555.555.555-32', 177),
(255, 'Limpeza Dental', 'Procedimento para remoção de placa e tártaro', 120.00, '666.666.666-33', 277),
(355, 'Raios-X Dentário', 'Exame radiográfico dos dentes e mandíbulas', 80.00, '777.777.777-34', 377),
(455, 'Tratamento de Cárie', 'Procedimento para remoção de cárie e restauração', 200.00, '888.888.888-35', 577),
(555, 'Tratamento de Canal', 'Endodontia para salvar um dente comprometido', 600.00, '999.999.999-36', 477),
(655, 'Extração de Dente', 'Remoção de dente danificado ou comprometido', 250.00, '111.111.111-37', 177),
(755, 'Colocação de Aparelho Ortodontia', 'Instalação de aparelho dental para correção', 1500.00, '222.222.222-38', 277),
(855, 'Limpeza Profunda', 'Limpeza mais abrangente para gengivas e dentes', 180.00, '333.333.333-39', 377),
(955, 'Clareamento Dental', 'Procedimento para clareamento dos dentes', 400.00, '444.444.444-40', 977);

-- Inserção de dados na tabela agendamento
insert into agendamento (idagendamento, dataHora, estadoPaciente, Paciente_Cpf, procedimento_idprocedimento, Profissional_cpf_profissional)
values 
(134,'2024-10-17 09:00:00', 'Ativo', '111.111.111-01', 155, '555.555.555-32'),
(234,'2024-10-17 10:00:00', 'Ativo', '222.222.222-02', 255, '666.666.666-33'),
(334,'2024-10-17 11:00:00', 'Cancelado', '333.333.333-03', 355, '777.777.777-34'),
(434,'2024-10-17 12:00:00', 'Ativo', '444.444.444-04', 155, '888.888.888-35'),
(534,'2024-10-17 13:00:00', 'Ativo', '555.555.555-05', 255, '999.999.999-36'),
(634,'2024-10-17 14:00:00', 'Ativo', '666.666.666-06', 355, '111.111.111-37'),
(734,'2024-10-17 15:00:00', 'Ativo', '777.777.777-07', 155, '222.222.222-38'),
(834,'2024-10-17 16:00:00', 'Ativo', '888.888.888-08', 255, '333.333.333-39'),
(934,'2024-10-17 17:00:00', 'Ativo', '999.999.999-09', 355, '444.444.444-40'),
(1034,'2024-10-17 18:00:00', 'Ativo', '000.000.000-00', 155, '555.555.555-41');

-- Inserção de dados na tabela registro clinico
insert into registroClinico (idregistroClinico, dataRegistro, diagnostico, tratamento, prescrisoes, Paciente_Cpf, Profissional_cpf_profissional) 
values 
(121, '2024-10-15', 'Consulta Odontológica', 'Consulta inicial para avaliação dental', 'Prescrição: uso de creme dental','111.111.111-01', '555.555.555-32'),
(221, '2024-10-15', 'Limpeza Dental', 'Procedimento para remoção de placa e tártaro', 'Prescrição: uso de fio dental', '222.222.222-02', '666.666.666-33'),
(321, '2024-10-15', 'Raios-X Dentário', 'Exame radiográfico dos dentes e mandíbulas', 'Prescrição: observar resultados', '333.333.333-03','777.777.777-34'),
(421, '2024-10-15', 'Tratamento de Cárie', 'Procedimento para remoção de cárie e restauração', 'Prescrição: evitar doces', '444.444.444-04','888.888.888-35'),
(521, '2024-10-15', 'Tratamento de Canal', 'Endodontia para salvar um dente comprometido', 'Prescrição: medicação antibiótica','555.555.555-05',  '999.999.999-36'),
(621, '2024-10-15', 'Extração de Dente', 'Remoção de dente danificado ou comprometido', 'Prescrição: analgésicos', '666.666.666-06', '111.111.111-37'),
(721, '2024-10-15', 'Colocação de Aparelho Ortodontia', 'Instalação de aparelho dental para correção', 'Prescrição: retorno em 30 dias', '777.777.777-07', '222.222.222-38'),
(821, '2024-10-15', 'Limpeza Profunda', 'Limpeza mais abrangente para gengivas e dentes', 'Prescrição: cuidados pós-limpeza', '888.888.888-08' ,'333.333.333-39'),
(921, '2024-10-15', 'Clareamento Dental', 'Procedimento para clareamento dos dentes', 'Prescrição: evitar alimentos corantes', '999.999.999-09','444.444.444-40');

-- Inserção de dados na tabela formaPagamento
insert into formaPagamento (idformaPagamento, tipo, valor, qtdParcelas, desconto, fatura_idfatura)
values
(112, 'Cartão de Crédito', 150.00, 1, 0.00, 199),  
(212, 'Dinheiro', 120.00, 1, 0.00, 299),           
(312, 'Cartão de Débito', 80.00, 1, 0.00, 399),     
(412, 'Cheque', 200.00, 1, 0.00, 499),              
(512, 'Transferência', 600.00, 1, 0.00, 599),       
(612, 'Cartão de Crédito', 250.00, 1, 0.00, 699),  
(712, 'Dinheiro', 400.00, 1, 0.00, 799),            
(812, 'Cartão de Crédito', 1500.00, 12, 0.00, 899), -- (parcelada)
(912, 'Transferência', 180.00, 1, 0.00, 999),       
(1012, 'Dinheiro', 500.00, 1, 0.00, 1099),           
(1112, 'Cartão de Crédito', 2000.00, 1, 0.00, 1199), 
(1212, 'Cheque', 300.00, 1, 0.00, 1299);             

-- Inserção de dados na tabela financeiro

insert into financeiro (idfinanceiro, tipo, datadocusto, descricao, valor, procedimento_idprocedimento, Profissional_cpf_profissional)
values 
(131, 'Receita', '2024-10-15', 'Receita de Consulta Odontológica', 150.00, 155, '555.555.555-32'),
(231, 'Receita', '2024-10-15', 'Receita de Limpeza Dental', 120.00, 255, '666.666.666-33'),
(331, 'Receita', '2024-10-15', 'Receita de Raios-X Dentário', 80.00, 355, '777.777.777-34'),
(431, 'Receita', '2024-10-15', 'Receita de Tratamento de Cárie', 200.00, 455, '888.888.888-35'),
(531, 'Receita', '2024-10-15', 'Receita de Tratamento de Canal', 600.00, 555, '999.999.999-36'),
(631, 'Receita', '2024-10-15', 'Receita de Extração de Dente', 250.00, 655, '111.111.111-37'),
(731, 'Receita', '2024-10-15', 'Receita de Clareamento Dental', 400.00, 955, '444.444.444-40'),
(831, 'Receita', '2024-10-15', 'Receita de Colocação de Aparelho Ortodontia', 1500.00, 755, '222.222.222-38'),
(931, 'Receita', '2024-10-15', 'Receita de Limpeza Profunda', 180.00, 855, '333.333.333-39'),
(1031, 'Despesa', '2024-10-01', 'Compra de materiais odontológicos', 500.00, NULL, NULL),
(1131, 'Despesa', '2024-10-05', 'Pagamento de aluguel', 2000.00, NULL, NULL),
(1231, 'Despesa', '2024-10-10', 'Contas de água e luz', 300.00, NULL, NULL);

-- Inserção de dados na tabela fatura
SELECT * FROM fatura;
insert into fatura (idfatura, data_fatura, valorTotal, status_pagamento, financeiro_idfinanceiro, Paciente_Cpf, procedimento_idprocedimento)
values
(199, '2024-10-15', 150.00, 'Pendente', 131, '111.111.111-01', 155),
(299, '2024-10-15', 120.00, 'Pendente', 231, '222.222.222-02', 255),
(399, '2024-10-15', 80.00, 'Pendente', 331, '333.333.333-03', 355),
(499, '2024-10-15', 200.00, 'Pendente', 431, '444.444.444-04', 455),
(599, '2024-10-15', 600.00, 'Pendente', 531, '555.555.555-05', 555),
(699, '2024-10-15', 250.00, 'Pendente', 631, '666.666.666-06', 655),
(799, '2024-10-15', 400.00, 'Pendente', 731, '777.777.777-07', 955),
(899, '2024-10-15', 1500.00, 'Pendente', 831, '888.888.888-08', 755),
(999, '2024-10-15', 180.00, 'Pendente', 931, '999.999.999-09', 855),
(1099, '2024-10-01',500.00,'Pendente', 1031, NULL, NULL),
(1199, '2024-10-05', 2000.00, 'Pendente', 1131, NULL, NULL),
(1299, '2024-10-10', 300.00, 'Pendente', 1231, NULL, NULL);
-- Inserir dados da tabela registro clinico do profissional
insert into registroclinico_has_profissional (registroClinico_idregistroClinico, Profissional_cpf_profissional)
values
(121, '111.111.111-37'),
(221, '222.222.222-38'),
(321, '333.333.333-39'),
(421, '444.444.444-40'),
(521, '555.555.555-32'),
(621, '555.555.555-41'),
(721, '666.666.666-33'),
(821, '777.777.777-34'),
(921, '888.888.888-35');

