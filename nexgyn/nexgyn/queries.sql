SELECT DISTINCTROW [Nome] & " " & [Sobrenome] AS NomeP, [Pacientes por Sobrenome].ID, [Endere�o] & ", " & [Endnum] & " / " & [EndApart] AS EndP, [Pacientes por Sobrenome].CEP, [Pacientes por Sobrenome].Cidade, Procedimentos.Data
FROM [Pacientes por Sobrenome] INNER JOIN Procedimentos ON [Pacientes por Sobrenome].ID = Procedimentos.[ID da Paciente]
WHERE (((Procedimentos.Data) Like Aviso_renovar([Data],[Renovar])))
ORDER BY [Nome] & " " & [Sobrenome]
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW [Nome] & " " & [Sobrenome] AS NomeP, [Pacientes por Sobrenome].ID, [Endere�o] & ", " & [Endnum] & " / " & [EndApart] AS EndP, [Pacientes por Sobrenome].CEP, [Pacientes por Sobrenome].Cidade, [Pacientes por Sobrenome].ID AS Cont, Procedimentos.Data
FROM [Pacientes por Sobrenome] INNER JOIN Procedimentos ON [Pacientes por Sobrenome].ID = Procedimentos.[ID da Paciente]
WHERE (((Aviso_renovar([Data],[Renovar]))=1))
ORDER BY [Nome] & " " & [Sobrenome]
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW pacientes.*
FROM pacientes
ORDER BY pacientes.Sobrenome, pacientes.Nome
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW [Tabela de Lembretes].[T�tulo do Lembrete], [Tabela de Lembretes].[Descri��o do Lembrete]
FROM [Tabela de Lembretes]
ORDER BY [Tabela de Lembretes].[T�tulo do Lembrete];

SELECT DISTINCTROW [Tabela de Prescri��es].[T�tulo da Prescri��o], [Tabela de Prescri��es].[Descri��o da Prescri��o]
FROM [Tabela de Prescri��es]
ORDER BY [Tabela de Prescri��es].[T�tulo da Prescri��o];

SELECT DISTINCTROW pacientes.*
FROM pacientes
WHERE (((pacientes.ID)=RetFiltro_IDPaciente()))
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW Hist�ria.*
FROM Hist�ria
WHERE (((Hist�ria.ID)=RetFiltro_IDPaciente()))
ORDER BY Hist�ria.[Data do Exame]
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW Obst�trico.*, pacientes.Rub�ola, pacientes.GS, pacientes.RH, pacientes.Gesta, pacientes.Para, Calc_Idade([Nasc]) AS Idade, [Nome] & " " & [Sobrenome] AS PNome
FROM pacientes INNER JOIN Obst�trico ON pacientes.ID = Obst�trico.[ID da Paciente]
WHERE (((Obst�trico.[ID da Paciente])=RetFiltro_IDPaciente()))
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW [Exames Obst�tricos].*, Obst�trico.DUM
FROM Obst�trico INNER JOIN [Exames Obst�tricos] ON Obst�trico.ID = [Exames Obst�tricos].[ID do Obst�trico]
ORDER BY [Exames Obst�tricos].Data
WITH OWNERACCESS OPTION;

SELECT [Nome] & " " & [Sobrenome] AS NomePaciente, pacientes.ID
FROM pacientes;

SELECT DISTINCTROW Procedimentos.*
FROM Procedimentos
WHERE (((Procedimentos.[ID da Paciente])=RetFiltro_IDPaciente()))
ORDER BY Procedimentos.Data
WITH OWNERACCESS OPTION;

SELECT DISTINCTROW Obst�trico.*, [Exames Obst�tricos].*, pacientes.Rub�ola, pacientes.GS, pacientes.RH, pacientes.Gesta, pacientes.Para, Calc_Idade([Nasc]) AS Idade, [Nome] & " " & [Sobrenome] AS PNome, Obst�trico.ID AS Flt_IDObst
FROM pacientes INNER JOIN (Obst�trico INNER JOIN [Exames Obst�tricos] ON Obst�trico.ID = [Exames Obst�tricos].[ID do Obst�trico]) ON pacientes.ID = Obst�trico.[ID da Paciente]
WITH OWNERACCESS OPTION;