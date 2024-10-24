-- 1.Histórico de pagamento dos clientes:
SELECT p.nome, f.data_fatura, f.valorTotal
FROM paciente p
JOIN fatura f ON p.Cpf = f.Paciente_Cpf;

-- 2. Total de agendamentos por pacientes:
SELECT p.nome, COUNT(a.Paciente_Cpf) AS Total_Agendamentos
FROM paciente p
LEFT JOIN agendamento a ON p.Cpf = a.Paciente_Cpf
GROUP BY p.nome;

-- 3. Total de pacientes por seguro:
SELECT s.nomeSeguradora AS Tipo_Seguro, COUNT(p.Cpf) AS Total_Pacientes
FROM paciente p
JOIN seguro s ON p.seguro_idseguro = s.idseguro
GROUP BY s.nomeSeguradora;

-- 4. Total de pagamento por forma de pagamento:
SELECT fp.tipo, SUM(fp.valor) AS Total
FROM formapagamento fp
JOIN fatura f ON fp.fatura_idfatura = f.idfatura
GROUP BY fp.tipo;

-- 5. Agendamentos cancelados por data e hora:
SELECT a.dataHora, COUNT(a.idagendamento) AS Total_Pendentes
FROM agendamento a
WHERE a.estadoPaciente = 'Cancelado' 
GROUP BY a.dataHora;

-- 6: Comparação de agendamentos mensais:
SELECT MONTH(a.dataHora) AS Mes, COUNT(a.idagendamento) AS Total_Agendamentos
FROM agendamento a
GROUP BY MONTH(a.dataHora);

-- 7: Profissional com menos de 5 pacientes:
SELECT pr.nome AS Profissional, COUNT(a.Paciente_Cpf) AS Total_Pacientes
FROM profissional pr
LEFT JOIN agendamento a ON pr.cpf_profissional = a.Profissional_cpf_profissional
GROUP BY pr.nome
HAVING Total_Pacientes < 5;

-- 8: Total de seguros por paciente:
SELECT p.nome AS Paciente, COUNT(s.idseguro) AS Total_Seguros
FROM paciente p
LEFT JOIN seguro s ON p.seguro_idseguro = s.idseguro
GROUP BY p.nome;

-- 9: Quais históricos de trabalho são realizados por pelos laboratórios externos?
SELECT le.nome, le.historicosTrabalhos
FROM laboratorioexterno le;

-- 10: Quais são os procedimentos agendados por um paciente específico?
SELECT a.idagendamento, a.dataHora, p.nome AS paciente, pr.nome AS procedimento
FROM agendamento a
JOIN paciente p ON a.Paciente_Cpf = p.Cpf
JOIN procedimento pr ON a.procedimento_idprocedimento = pr.idprocedimento
WHERE p.Cpf = '222.222.222-02';

-- 11: Qual o estado de pagamento das faturas de um paciente?
SELECT f.idfatura, f.data_fatura, f.valorTotal, f.status_pagamento
FROM fatura f
WHERE f.Paciente_Cpf = '444.444.444-04';

-- 12: Qual profissional realizou atendimento a um paciente?
SELECT DISTINCT pr.nome AS profissional
FROM registroclinico rc
JOIN profissional pr ON rc.Profissional_cpf_profissional = pr.cpf_profissional
WHERE rc.Paciente_Cpf = '666.666.666-06';

-- 13: Quais pacientes moram na cidade de Olinda?
SELECT p.nome, p.Cpf
FROM paciente p
JOIN enderecopaciente ep ON p.enderecoPaciente_idendereco = ep.idendereco
WHERE ep.cidade = 'Olinda';

-- 14: Quais pacientes estão com a fatura pendente?
SELECT p.nome, p.Cpf, f.idfatura, f.data_fatura, f.valorTotal, f.status_pagamento
FROM fatura f
JOIN paciente p ON f.Paciente_Cpf = p.Cpf
WHERE f.status_pagamento = 'PENDENTE';

-- 15: Quais profissionais realizaram atendimento a um paciente:
SELECT DISTINCT pr.nome AS profissional
FROM registroclinico rc
JOIN profissional pr ON rc.Profissional_cpf_profissional = pr.cpf_profissional
WHERE rc.Paciente_Cpf = '444.444.444-04';

-- 16: Lista com os endereços dos pacientes:
SELECT p.nome, ep.cidade, ep.bairro, ep.rua, ep.numero, ep.CEP
FROM paciente p
JOIN enderecopaciente ep ON p.enderecoPaciente_idendereco = ep.idendereco;

-- 17: Total de faturas de um paciente:
SELECT SUM(f.valorTotal) AS total_faturas
FROM fatura f
WHERE f.Paciente_Cpf = '777.777.777-07';

-- 18: Quais pacientes tem seguro:
SELECT p.nome, s.nomeSeguradora
FROM paciente p
JOIN seguro s ON p.seguro_idseguro = s.idseguro
WHERE p.seguro_idseguro IS NOT NULL;

-- 19: Quais procedimentos são realizados por um profissional:
SELECT pr.nome AS procedimento
FROM procedimento pr
WHERE pr.Profissional_cpf_profissional = '111.111.111-37';

-- 20: Distribuição de pacientes por cidade:
SELECT ep.cidade, COUNT(*) AS total_pacientes
FROM paciente p
JOIN enderecopaciente ep ON p.enderecoPaciente_idendereco = ep.idendereco
GROUP BY ep.cidade;

-- 21: Qual diagnóstico foi dado para um paciente:
SELECT rc.diagnostico
FROM registroclinico rc
WHERE rc.Paciente_Cpf = '444.444.444-04';

-- 22: Qual o total de agendamentos e de faturas pendentes por pacientes:
SELECT p.nome, p.Cpf, COUNT(a.idagendamento) AS Total_Agendamentos, SUM(f.valorTotal) AS Total_Faturas_Pendentes
FROM paciente p
LEFT JOIN agendamento a ON p.Cpf = a.Paciente_Cpf
LEFT JOIN fatura f ON p.Cpf = f.Paciente_Cpf AND f.status_pagamento = 'PENDENTE'
GROUP BY p.nome, p.Cpf;

