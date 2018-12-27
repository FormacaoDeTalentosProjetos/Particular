USE SCOPIO
GO


-- INSERT NIVEL PAPEL
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('TREINEE', 0)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('JÚNIOR', 1)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('SÊNIOR', 2)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('PLENO', 3)

-- INSERT PAPEL
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ESTAGIÁRIO DE PROGRAMAÇÃO', 0)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('PROGRAMADOR',1)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE NEGÓCIOS', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE QUALIDADE',2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE SISTEMAS', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA PROGRAMADOR', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ARQUITETO DE TESTES', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ARQUITETO UX/UI', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ENGENHEIRO DE SOFTWARE', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('COORDENADOR DE DESENVOLVIMENTO', 4)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('GERENTE DE TI', 5)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('RECURSOS HUMANOS', 6)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('CEO', 7)
GO

-- INSERT USER
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'ALEX BARLETTA ARAÚJO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'AMANDA MAYARA DE ARAUJO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'ANA CLARA MARSON RIOS BORDINHON', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'ANDERSON DE CARVALHO BERNABÉ', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(11, 3, NULL, 'ANDERSON SOLDEIRA DE LIMA CAVALCANTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL, 'AULES RONI JOBSTRAIBIZER', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'CALÉO DE ANTONIO CACIANO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'CLOTER GONÇALVES BARBOSA JUNIOR', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'DANIEL MEIRELES TOMAZINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'DANIELA OLIVEIRA FRANCISCO TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, 'DANILO CESAR DE SOUZA FERREIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'DELEON HENRIQUE DA SILVA PINTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'DENISE NOGUEIRA DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 4, NULL, 'EDNEI BETTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, NULL, 'EDUARDO ALBERTO DO SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6 ,3, NULL, 'ELAINE VIANA COSTA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'EMERSON CARLOS DUARTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'EVAIR PEREIRA SOUSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'EVANDRO RIBEIRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 2, NULL, 'EVERTON LIMA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'EVERTON LUIZ FERREIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'FABIO MASSARETTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'FÁBIO VIEIRA GONÇALVES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, 'FELIPE DE MELLO OLIVEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'FERNANDA LUÍZA CONTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(7, 4, NULL, 'FERNANDA MARIA DUARTE VIEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'FERNANDO ALCÂNTARA GARCIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'FERNANDO BERSTECHER AJLUNE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'FERNANDO JUNIO DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, NULL, 'FERNANDO MENDES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'FILIPE DE OLIVEIRA RIBEIRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'FILIPE PEREIRA COLANERI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'GABRIEL BRUNO TRALDI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(2, 2, NULL, 'GABRIEL WILLIAM GALDINO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'GEOVANI LIMA AZEVEDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, 'GESSIANE DA SILVIA MARTINELLE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'GIOVANA SELEIO VALINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'GLÉBER MICHEL ALVES SCHIAVO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'GREGORI BRUNO FELICIO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'GUILHERME BORDALLO DE ALMEIDA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'GUILHERME CESTAROLLI SELEGUIM', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 4, NULL, 'GUSTAVO SERRACCHIANI FERRARI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(10, 3, NULL, 'HENRIQUE FANTATHO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'ISAC DANIEL FILDELFLAVIO PETINATE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'ITALO BIGUZI DUARTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'JHONATAN VINÍCIUS MARTINS DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'JULIO CÉSAR MONTALVÃO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 2, NULL, 'KAIQUE GUSTAVO RIBEIRO DO PRADO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'LEANDRO CODARIN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'LEANDRO MARQUES DE OLIVEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'LEILA SANTANA FERREIRA FIGUEREDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'LUCAS MARQUES DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'LUCAS TÚMOLO CONTESINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 2, NULL, 'LUCAS VENDRAMIN ANTUNES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL, 'LUCIANA MARTINS PONTEL BAHIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'LUCIO FLAVIO FRANSOIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'LUÍS ANTONIO PRADO LANÇA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'LUIZ CARLOS CECATTI JÚNIOR', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL, 'MARA CRISTINA DA ROSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'MARCO AURELIO DE SOUZA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'MARIO JORGE DE ARAUJO BARBOSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'MATEUS AUGUSTO DO AMARAL', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'MATEUS GONÇALVES BRITO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'MATHEUS BIO SALLES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'MIKAERI OHANA ESTEVAM CANDIDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'MURILO EDUARDO BACAGINI SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'NICOLAS TOSATTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'OTAVIO AUGUSTO TOLEDO DE PAULA CIPRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 4, NULL, 'PABLO ZAMPA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(8, 3, NULL, 'PAULO ROGÉRIO SPIANDORIM MATTIUZZO  ', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'PEDRO DE SOUZA MORAES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'PEDRO MIETTO BRUINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, 'PEDRO OCTAVIO RODRIGUES DE ANDRADE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'RAFAEL DE MOURA ALVES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'RAFAEL LINO DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'RAFAEL ZANCANI FERCONDINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(10, 4, NULL, 'RAFAELA GIROTTE SAMPAIO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'RENAN TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, NULL, 'RICARDO ALVES DE SOUZA FRANCISCO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'RICARDO APARECIDO GARBATI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'RICARDO CRISTIANO TAPIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'RICARDO MARCEL GIARETTA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 3, NULL, 'RICARDO MEAN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'RICARDO RAMOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'RODRIGO ALVES FERREIRA DE BRITO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'SERGIO DO CARMO TORRES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, 'SILVIA CRISTINA AROUCHE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'STEPHANIE BIANCA BRESCANCIN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, 'THIAGO MANSONETTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'TIAGO DE OLIVEIRA TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, 'TIAGO HENRIQUE BERNARDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, 'VALDEMIR PRAXEDES TRINDADE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, 'VANDERLEI NERES DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, 'VANDERLEY NERES DE SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, 'WILLIAM HARTUNG', NULL, NULL, 1)
GO

-- CRIA ASSOCIAÇÃO ENTRE USUÁRIO E LOGIN
----------------------------------------------------------------
-- USER GLEBER
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (38,'ggleber', @HASH, 1)
GO

-- USER AMARAL
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (62,'mamaral', @HASH, 1)
GO

-- USER FERNANDA
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (25,'fconti', @HASH, 1)
GO

-- USER ALEX
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (1,'abarletta', @HASH, 1)
GO

-- USER CALEO
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (7,'ccaciano', @HASH, 1)
GO
----------------------------------------------------------------

-- INSERT TRIBO
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDP EFINANCE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDP RDV', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS BRINKS', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS EVOLUTIVAS MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS FINAMAX', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS NN MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS PASSARELA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS SEQUOIA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS UNIBANCO', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CONSULTORIA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CSS MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'FORMAÇÃO', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'OPERAÇÃO', 1)
GO

-- INSERT PAIS
INSERT INTO [TB_PAIS]([Nome], [Sigla]) VALUES('BRASIL', 'BRA')
INSERT INTO [TB_PAIS]([Nome], [Sigla]) VALUES('ESTADOS UNIDOS', 'EUA')
GO

-- INSERT UNIDADE
INSERT INTO [TB_UNIDADE]([IdPais], [Nome], [EstSigla]) VALUES(1, 'VICERI OSORIO', 'SP')
INSERT INTO [TB_UNIDADE]([IdPais], [Nome], [EstSigla]) VALUES(1, 'VICERI JOBIM', 'SP')
GO

-- INSERT SQUAD
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'LEMURES MUTUALISTAS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'BUG HUNTERS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'NERD BUNKERS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'ALFA NOOB', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'MARA CRISTINA DA ROSA', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'THIAGO MANSONETTO', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'DANIELA OLIVEIRA FRANCISCO TEIXEIRA', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'GUSTAVO SERRACCHIANI FERRARI', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'MARA CRISTINA DA ROSA', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'MARA CRISTINA DA ROSA', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'MARA CRISTINA DA ROSA', 1)
GO

-- INSERT MENTOR
INSERT INTO [TB_MENTOR]([IdUser]) VALUES(5)
GO

-- INSERT MENTOR SQUAD
INSERT INTO [TB_MENTOR_SQUAD]([IdSquad], [IdMentor]) VALUES (1, 1)
GO

-- ASSOCIAÇÃO SQUAD "LEMURES"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(7, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(1, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(25, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(62, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(38, 1)
GO

-- ASSOCIAÇÃO SQUAD BUG HUNTERS
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(13, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(50, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(64, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(57, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(93, 2)
GO

-- ASSOCIAÇÃO SQUAD NERD BUNKERS
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(29, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(44, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(53, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(63, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(72, 3)
GO

-- ASSOCIAÇÃO SQUAD ALFA NOOB
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(23, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(21, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(37, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(46, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(71, 4)
GO

-- ASSOCIAÇÃO SQUAD "MARA CRISTINA DA ROSA"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(59, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(73, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(19, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(56, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(66, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(40, 5)
GO

-- ASSOCIAÇÃO SQUAD "THIAGO MANSONETTO"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(89, 6)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(86, 6)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(85, 6)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(60, 6)
GO

-- ASSOCIAÇÃO SQUAD "DANIELA OLIVEIRA FRANCISCO TEIXEIRA"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(10, 7)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(47, 7)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(45, 7)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(11, 7)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(88, 7)
GO

-- ASSOCIAÇÃO SQUAD "GUSTAVO SERRACCHIANI FERRARI"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(42, 8)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(58, 8)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(22, 8)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(90, 8)
GO

