-- 1. Remover a chave estrangeira atual da tabela agendamento
ALTER TABLE agendamento
DROP FOREIGN KEY fk_agendamento_Paciente;

-- 2. Adicionar novamente a chave estrangeira para garantir integridade referencial entre agendamento e paciente
-- Agora, utilizando a opção ON DELETE CASCADE para que, ao excluir um paciente, seus agendamentos sejam automaticamente excluídos
ALTER TABLE agendamento
ADD CONSTRAINT fk_agendamento_Paciente
FOREIGN KEY (Paciente_Cpf) REFERENCES paciente(Cpf) ON DELETE CASCADE;

-- 3. Adicionar uma nova coluna dataEmissao na tabela seguro para registrar a data de emissão de cada seguro
-- A coluna será do tipo DATE e pode ser nula
ALTER TABLE seguro
ADD COLUMN dataEmissao DATE NULL;

-- 4. Remover a coluna historicosTrabalhos da tabela laboratorioexterno
-- Isso pode ser feito se o histórico de trabalhos realizados pelo laboratório não for mais necessário ou será armazenado em outro local
ALTER TABLE laboratorioexterno
DROP COLUMN historicosTrabalhos;

-- 5. Alterar o nome da coluna enderecoLaboratorio_idenderecoLaboratorio para enderecoLab
-- Essa alteração melhora a clareza do nome da coluna, mantendo o tipo de dado INT
ALTER TABLE laboratorioexterno
CHANGE COLUMN enderecoLaboratorio_idenderecoLaboratorio enderecoLab INT;

-- 6. Alterar o nome da coluna qtdParcelas para quantidade_parcela na tabela formapagamento, o tipo de dado INT é mantido.
ALTER TABLE formapagamento
CHANGE COLUMN qtdParcelas quantidade_parcela INT;

-- 7. Alterar novamente o nome da coluna enderecoLaboratorio_idenderecoLaboratorio para enderecoLab
ALTER TABLE laboratorioexterno
CHANGE COLUMN enderecoLaboratorio_idenderecoLaboratorio enderecoLab INT;

-- 8. Adicionar uma nova coluna serviçoPrestado à tabela laboratorioexterno
ALTER TABLE laboratorioexterno
ADD serviçoPrestado VARCHAR(255);

-- 9. Alterar o tipo de dado da coluna telefone de VARCHAR para CHAR com comprimento fixo de 11
ALTER TABLE paciente
MODIFY COLUMN telefone CHAR(11);

-- 10. Alterar o tipo de dado da coluna custo em Procedimento para DECIMAL para garantir maior precisão nos valores
ALTER TABLE procedimento
MODIFY COLUMN custo DECIMAL(10,2);

-- 11. Atualizar o telefone de um paciente na tabela Paciente
UPDATE paciente
SET telefone = '11999999999'
WHERE Cpf = '666.666.666-06';

-- 12. Atualizar a especialização de um dentista na tabela Profissional
UPDATE profissional
SET especializacao = 'Ortodontista'
WHERE cpf_profissional = '666.666.666-33';

-- 14. Atualizar o valor de um pagamento na tabela fatura
UPDATE fatura
SET valorTotal = 450.00
WHERE idfatura = 199;

-- 16. Atualizar a data de emissão do seguro na tabela Seguro
UPDATE seguro
SET dataEmissao = '2024-01-15'
WHERE idseguro = 8;

-- 17. Atualizar o salário de um funcionário na tabela Profissional
UPDATE profissional
SET salario = 3200.50
WHERE cpf_profissional = '444.444.444-40';


-- 19. Atualizar o histórico de saúde bucal de um paciente na tabela paciente
UPDATE registroclinico
SET prescrisoes = 'Repouso e medicação para dor.'
WHERE Paciente_Cpf = '666.666.666-06';

-- 20. Excluir um agendamento futuro que foi cancelado na tabela Agendamento
DELETE FROM agendamento
WHERE idagendamento = 104 AND dataHora = '2024-02-10 10:00:00'; -- Ajuste o horário conforme necessário

