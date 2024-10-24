-- 1: Atualiza o telefone da paciente Ana Clara Oliveira
UPDATE Paciente 
SET telefone = '81999999000' 
WHERE Cpf = '444.444.444-04';

-- 2:
UPDATE Profissional
SET especializacao = 'Ortodontia'
WHERE cpf_profissional = '555.555.555-32';

-- 3:
UPDATE Profissional
SET especializacao = 'Ortodontia'
WHERE cpf_profissional = '666.666.666-33';

-- 4: 
UPDATE Profissional
SET especializacao = 'Pediatria Odontológica'
WHERE cpf_profissional = '777.777.777-34';

-- 5: 
UPDATE Profissional
SET especializacao = 'Periodontia'
WHERE cpf_profissional = '888.888.888-35';

-- 6: 
UPDATE Profissional
SET especializacao = 'Clínico Geral'
WHERE cpf_profissional = '999.999.999-36';

-- 7: 
UPDATE Profissional
SET especializacao = 'Clínica Geral Odontológica'
WHERE cpf_profissional = '111.111.111-37';

-- 8: 
UPDATE Profissional
SET especializacao = 'Cirurgia Bucomaxilofacial'
WHERE cpf_profissional = '222.222.222-38';

-- 9: 
UPDATE Profissional
SET especializacao = 'Neurologia Odontológica'
WHERE cpf_profissional = '333.333.333-39';

-- 10: 
UPDATE Profissional
SET especializacao = 'Odontopediatria'
WHERE cpf_profissional = '444.444.444-40';

-- 11:
UPDATE Profissional
SET especializacao = 'Neurologia Odontológica'
WHERE cpf_profissional = '555.555.555-41';

-- 12: 
SET SQL_SAFE_UPDATES = 0;
UPDATE fatura
SET status_pagamento = 'Pago'
WHERE status_pagamento = 'Pendente';

-- 13:
DELETE FROM procedimento 
WHERE idprocedimento IN (1, 2, 3, 4, 5, 6, 7, 8, 9);

-- 14:
DELETE FROM agendamento 
WHERE procedimento_idprocedimento IN (1, 2, 3, 4, 5, 6, 7, 8, 9);

-- 15: 
DELETE FROM agendamento WHERE Paciente_Cpf = '000.000.000-00';

-- 16: Atualizar o nome de um paciente específico na tabela Paciente:
UPDATE Paciente
SET nome = 'Lucca Pereira'
WHERE Cpf = '666.666.666-06';

-- Atualizar o número de parcelas de uma forma de pagamento
-- Alteração sutil, apenas ajustando a quantidade de parcelas de 3 para 4
UPDATE formapagamento
SET quantidade_parcela = 4
WHERE idFormaPagamento = 1;

-- Excluir um agendamento específico na tabela Agendamento
-- Excluir um registro de agendamento onde o paciente não compareceu
DELETE FROM agendamento
WHERE idAgendamento = 101;

-- Atualizar o custo de um procedimento odontológico específico
-- Pequena alteração no valor de um procedimento, ajustando para refletir um desconto
UPDATE procedimento
SET custo = 250.00
WHERE codigoProcedimento = 'PROC123';

-- Excluir um registro de pagamento antigo na tabela Pagamento
-- Remover um pagamento que foi cancelado por erro administrativo
DELETE FROM fatura
WHERE idFatura = 499;
