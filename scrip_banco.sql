USE [guiadefestacuritiba]
GO
/****** Object:  User [locaweb-net\lorransilva]    Script Date: 11/02/2009 20:38:11 ******/
CREATE USER [locaweb-net\lorransilva] FOR LOGIN [locaweb-net\lorransilva] WITH DEFAULT_SCHEMA=[locaweb-net\lorransilva]
GO
/****** Object:  Schema [performance]    Script Date: 11/02/2009 20:36:33 ******/
CREATE SCHEMA [performance] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[local_banner]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_banner](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](50) NULL,
	[prioridade] [int] NULL,
 CONSTRAINT [PK_local_banner] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imagem]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagem](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](200) NULL,
	[tamanho] [int] NULL,
	[imagem] [image] NULL,
	[tipo] [nvarchar](200) NULL,
	[codigo_anunciante] [int] NULL,
	[configuracao] [nvarchar](500) NULL,
 CONSTRAINT [PK_imagem_Temp] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[financeiro]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[financeiro](
	[codigo] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[mes] [int] NULL,
	[vencimento] [datetime] NULL,
	[mensalidade] [real] NULL,
	[boleto] [varchar](300) NULL,
	[observacao] [text] NULL,
 CONSTRAINT [PK_financeiro] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[controle]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[controle](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](50) NULL,
	[tipo_controle] [int] NULL,
 CONSTRAINT [PK_controle] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo] [int] NOT NULL,
	[razao_social] [varchar](200) NULL,
	[cnpj] [varchar](30) NULL,
	[cpf] [varchar](20) NULL,
	[rg] [varchar](20) NULL,
	[endereco] [varchar](300) NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[email] [varchar](300) NULL,
	[responsavel] [varchar](200) NULL,
	[codigo_anuncio] [int] NULL,
	[telefone] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
	[tipo_categoria] [int] NULL,
	[texto] [nvarchar](3000) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bonus_retorno]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bonus_retorno](
	[codigo] [int] NULL,
	[codigo_anunciante] [int] NULL,
	[nome] [varchar](100) NULL,
	[telefone] [varchar](30) NULL,
	[email] [varchar](200) NULL,
	[data_impressao] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bonus]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bonus](
	[codigo] [int] NOT NULL,
	[codigo_anunciante] [int] NOT NULL,
	[bonus] [varchar](100) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_bonus] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[banner_categoria]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner_categoria](
	[codigo] [int] NOT NULL,
	[codigo_categoria] [int] NULL,
	[codigo_banner] [int] NULL,
 CONSTRAINT [PK_banner_categoria] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
	[codigo_local_banner] [int] NULL,
	[largura] [int] NULL,
	[altura] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_banner_Temp] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[anuncio_categoria]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anuncio_categoria](
	[codigo] [int] NOT NULL,
	[codigo_anunciante] [int] NOT NULL,
	[codigo_categoria] [int] NOT NULL,
 CONSTRAINT [PK_anunciante_categoria] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[anuncio]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[anuncio](
	[codigo] [int] NOT NULL,
	[codigo_cliente] [int] NULL,
	[empresa] [varchar](200) NULL,
	[cep] [varchar](20) NULL,
	[bairro] [varchar](100) NULL,
	[cidade] [varchar](200) NULL,
	[endereco] [varchar](300) NULL,
	[telefone] [varchar](50) NULL,
	[email] [varchar](300) NULL,
	[site] [varchar](400) NULL,
	[status] [int] NULL,
	[senha] [varchar](50) NULL,
	[acesso] [int] NULL,
 CONSTRAINT [PK_anuncio] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[anunciante]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anunciante](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
	[endereco] [nvarchar](300) NULL,
	[telefone] [nvarchar](50) NULL,
	[site] [nvarchar](200) NULL,
	[bairro] [nvarchar](100) NULL,
	[cidade] [nvarchar](100) NULL,
	[nome] [nvarchar](200) NULL,
	[status] [int] NULL,
	[senha] [nvarchar](255) NULL,
	[razao_social] [nvarchar](200) NULL,
	[cnpj] [nvarchar](30) NULL,
	[cpf] [nvarchar](30) NULL,
	[rg] [nvarchar](30) NULL,
	[endereco_boleto] [nvarchar](300) NULL,
	[email] [nvarchar](100) NULL,
	[cep] [nvarchar](30) NULL,
	[categoria_padrao] [int] NULL,
 CONSTRAINT [PK_anunciante_Temp] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](255) NULL,
	[senha] [nvarchar](255) NULL,
	[logado] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_mes]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_mes](
	[codigo] [int] NULL,
	[descricao] [nvarchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_controle]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_controle](
	[codigo] [int] NOT NULL,
	[descricao] [nvarchar](100) NULL,
 CONSTRAINT [PK_tipo_controle] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 11/02/2009 20:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status](
	[codigo] [int] NOT NULL,
	[descricao] [varchar](10) NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_logar]    Script Date: 11/02/2009 20:38:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_logar] 
           @descricao nvarchar(255),
           @senha nvarchar(255)
AS
Begin
       IF (SELECT codigo FROM usuario WHERE descricao = @descricao and senha = @senha) = 1
       begin
          UPDATE usuario
          SET  
             logado       = 1
          WHERE descricao = @descricao and senha = @senha
       end 
       else
       begin
          UPDATE usuario
          SET  
             logado       = 0
       end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_imagem]    Script Date: 11/02/2009 20:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_imagem] 
           @codigo int,
           @descricao nvarchar(200),
           @tamanho int,
           @imagem image,
           @codigo_anunciante int,
           @tipo nvarchar(200)

AS
Begin
	if (@codigo = 0)
	begin

       INSERT INTO imagem
           (codigo,
            descricao,
            tamanho,
            imagem,
            codigo_anunciante,
            tipo)
       VALUES
           (@codigo,
            @descricao,
            @tamanho,
            @imagem,
            @codigo_anunciante,
            @tipo)

    end
    else
    begin
       UPDATE imagem
       SET descricao         =@descricao, 
           tamanho           =@tamanho, 
           imagem            =@imagem, 
           codigo_anunciante =@codigo_anunciante,
           tipo              =@tipo
       WHERE
           codigo = @codigo  

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_financeiro]    Script Date: 11/02/2009 20:38:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_financeiro] 
     @codigo int,
     @codigo_cliente int,
     @mes int,
     @vencimento datetime,
     @mensalidade real,
     @boleto nvarchar(300),
     @observacao text
AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO financeiro(
          codigo,
          codigo_cliente,
          mes,
          vencimento,
          mensalidade,
          boleto,
          observacao)
       VALUES
         (@codigo,
          @codigo_cliente,
          @mes,
          @vencimento,
          @mensalidade,
          @boleto,
          @observacao)
    end
    else
    begin
       UPDATE financeiro
       SET  
          codigo_cliente =@codigo_cliente,
          mes            =@mes,
          vencimento     =@vencimento,
          mensalidade    =@mensalidade,
          boleto         =@boleto,
          observacao     =@observacao   
       WHERE codigo = @codigo
    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_cliente]    Script Date: 11/02/2009 20:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_cliente] 
   @codigo int,
   @razao_social nvarchar(200),
   @cnpj nvarchar(30),
   @cpf nvarchar(20),
   @rg nvarchar(20),
   @endereco nvarchar(300),
   @cep nvarchar(20),
   @bairro nvarchar(100),
   @cidade nvarchar(200),
   @email nvarchar(300),
   @responsavel nvarchar(200),
   @codigo_anuncio int,
   @telefone nvarchar(50)
AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO cliente(
          codigo,
          razao_social,
          cnpj,
          cpf,
          rg,
          endereco,
          cep,
          bairro,
          cidade,
          email,
          responsavel,
          codigo_anuncio,
          telefone)
       VALUES
         (@codigo,
          @razao_social,
          @cnpj,
          @cpf,
          @rg,
          @endereco,
          @cep,
          @bairro,
          @cidade,
          @email,
          @responsavel,
          @codigo_anuncio,
          @telefone)
    end
    else
    begin
       UPDATE cliente
       SET  
          razao_social   =@razao_social,
          cnpj           =@cnpj,
          cpf            =@cpf,
          rg             =@rg,
          endereco       =@endereco,
          cep            =@cep,
          bairro         =@bairro,
          cidade         =@cidade,
          email          =@email,
          responsavel    =@responsavel,
          codigo_anuncio =@codigo_anuncio,
          telefone       =@telefone
       WHERE codigo = @codigo
    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_categoria]    Script Date: 11/02/2009 20:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_categoria] 
           @codigo int,
           @descricao nvarchar(100),
           @tipo_categoria int,
           @texto nvarchar(3000)

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO categoria(
           codigo, 
           descricao ,
           tipo_categoria ,
           texto )
       VALUES
                 (@codigo,
                  @descricao,
                  @tipo_categoria,
                  @texto)
    end
    else
    begin

       UPDATE categoria
       SET  
           descricao      =@descricao,
           tipo_categoria =@tipo_categoria,
           texto          =@texto
       WHERE codigo = @codigo

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_bonusretorno]    Script Date: 11/02/2009 20:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_bonusretorno] 
           @codigo int,
           @codigo_anunciante int,
           @nome nvarchar(100),
           @telefone nvarchar(30),
           @email nvarchar(200),
           @data_impressao datetime

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO bonus_retorno(
           codigo,
           codigo_anunciante,
           nome,
           telefone,
           email,
           data_impressao)
       VALUES
       (@codigo,
        @codigo_anunciante,
        @nome,
        @telefone,
        @email,
        @data_impressao)
    end
    else
    begin

       UPDATE bonus_retorno
       SET  
       codigo_anunciante=@codigo_anunciante,
       nome             =@nome,
       telefone         =@telefone,
       email            =@email,
       data_impressao   =@data_impressao      
       WHERE codigo = @codigo
    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_bonus]    Script Date: 11/02/2009 20:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_bonus] 
           @codigo int,
           @codigo_anunciante int,
           @bonus nvarchar(100),
           @status int

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO bonus(
           codigo ,
           codigo_anunciante ,
           bonus,
           status)
       VALUES
       (@codigo ,
        @codigo_anunciante ,
        @bonus,
        @status)
    end
    else
    begin

       UPDATE bonus
       SET  
           codigo_anunciante= @codigo_anunciante ,
           bonus = @bonus,
           status= @status
       WHERE codigo = @codigo

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_banner_categoria]    Script Date: 11/02/2009 20:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_banner_categoria] 
           @codigo int,
           @codigo_categoria int,
           @codigo_banner int

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO banner_categoria(
           codigo,
           codigo_categoria ,
           codigo_banner)
       VALUES
                 (@codigo,
                  @codigo_categoria,
                  @codigo_banner)
    end
    else
    begin

       UPDATE banner_categoria
       SET  
           codigo_categoria    =@codigo_categoria
       WHERE codigo = @codigo AND codigo_banner = @codigo_banner 

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_banner]    Script Date: 11/02/2009 20:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_banner] 
           @codigo int,
           @descricao nvarchar(100),
           @codigo_local_banner int,
           @largura int,
           @altura int,
           @status int

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO banner(
           codigo,  
           descricao ,
           codigo_local_banner,
           largura,
           altura,
           status)
       VALUES
                 (@codigo,
                  @descricao,
                  @codigo_local_banner,
                  @largura,
                  @altura,
                  @status)
    end
    else
    begin

       UPDATE banner
       SET  
           descricao           =@descricao,
           codigo_local_banner =@codigo_local_banner,
           largura             =@largura,
           altura              =@altura,
           status              =@status
       WHERE codigo = @codigo

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_anuncio_categoria]    Script Date: 11/02/2009 20:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_anuncio_categoria] 
           @codigo int,
           @codigo_anunciante int,
           @codigo_categoria int
AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO anuncio_categoria(
                   codigo,  
                   codigo_anunciante,
                   codigo_categoria)
       VALUES
                 (@codigo,
                  @codigo_anunciante,
                  @codigo_categoria)
    end
    else
    begin

       UPDATE anuncio_categoria
       SET  
          codigo_categoria     = @codigo_categoria
       WHERE codigo_anunciante = @codigo_anunciante

    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_anuncio]    Script Date: 11/02/2009 20:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inclui_anuncio] 
	@codigo int,
	@codigo_cliente int,
	@empresa nvarchar(200),
	@cep nvarchar(20),
	@bairro nvarchar(100),
	@cidade nvarchar(200),
	@endereco nvarchar(300),
	@telefone nvarchar(50),
	@email nvarchar(300),
	@site nvarchar(400),
	@status int,
	@senha nvarchar(50)
AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO anuncio(
          codigo,
          codigo_cliente,
          empresa,
          cep,
          bairro,
          cidade,
          endereco,
          telefone,
          email,
          site,
          status,
          senha)
       VALUES
         (@codigo,
          @codigo_cliente,
          @empresa,
          @cep,
          @bairro,
          @cidade,
          @endereco,
          @telefone,
          @email,
          @site,
          @status,
          @senha)
    end
    else
    begin
       UPDATE anuncio
       SET  
          codigo_cliente =@codigo_cliente,
	      empresa        =@empresa,
	      cep            =@cep,
	      bairro         =@bairro,
	      cidade         =@cidade,
	      endereco       =@endereco,
	      telefone       =@telefone,
	      email          =@email,
	      site           =@site,
	      status         =@status,
	      senha          =@senha
       WHERE codigo = @codigo
    end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inclui_anunciante]    Script Date: 11/02/2009 20:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_inclui_anunciante] 
           @codigo int,
           @descricao nvarchar(100),
           @endereco nvarchar(200),
           @telefone nvarchar(100),
           @email nvarchar(100),
           @site nvarchar(200),
           @nome nvarchar(200),
           @status int,
           @senha nvarchar(255),
           @bairro nvarchar(50),
           @cidade nvarchar(50),
           @razao_social nvarchar(200),
           @cnpj nvarchar(30),
           @cpf nvarchar(30),
           @rg nvarchar(30),
           @endereco_boleto nvarchar(300),
           @cep nvarchar(30),
           @categoria_padrao int

AS
Begin
	if (@codigo = 0)
	begin
       INSERT INTO anunciante(
                   codigo
                  ,descricao
                  ,endereco
                  ,telefone
                  ,email
                  ,site
                  ,nome
                  ,status
                  ,senha
                  ,bairro
                  ,cidade
                  ,razao_social
                  ,cnpj
                  ,cpf
                  ,rg
                  ,endereco_boleto
                  ,cep
                  ,categoria_padrao)
       VALUES
                 (@codigo,
                  @descricao,
                  @endereco,
                  @telefone,
                  @email ,
                  @site,
                  @nome,
                  @status,
                  @senha ,
                  @bairro,
                  @cidade,
                  @razao_social,
                  @cnpj,
                  @cpf,
                  @rg,
                  @endereco_boleto,
                  @cep,
                  @categoria_padrao)
    end
    else
    begin
       UPDATE anunciante
       SET  
          descricao       = @descricao,
          endereco        = @endereco,
          telefone        = @telefone,
          email           = @email,
          site            = @site,
          nome            = @nome,
          status          = @status,
          senha           = @senha,
          bairro          = @bairro,
          cidade          = @cidade,
          razao_social    = @razao_social,
          cnpj            = @cnpj,
          cpf             = @cpf,
          rg              = @rg,
          endereco_boleto = @endereco_boleto,
          cep             = @cep,
          categoria_padrao= @categoria_padrao
       WHERE codigo = @codigo
    end
end
GO
