﻿CREATE TABLE [dbo].[TB_MEMBRO](
	[ID] INT IDENTITY NOT NULL,
	[IdUser] INT NOT NULL,
	[IdSquad] INT NULL,
	CONSTRAINT [PK_MEMBRO] PRIMARY KEY([ID]),
	CONSTRAINT [FK_MEMBRO_USER] FOREIGN KEY([IdUser]) REFERENCES TB_USER([ID]),
	CONSTRAINT [FK_MEMBRO_SQUAD] FOREIGN KEY([IdSquad]) REFERENCES TB_SQUAD([ID])
)
GO