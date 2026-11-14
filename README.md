# Outer Space Bookstore

Sistema desktop de gerenciamento de livraria desenvolvido em **Delphi (Object Pascal)** com banco de dados **MySQL**. Permite cadastrar, consultar e gerar relatórios de funcionários, editoras e livros.

## Funcionalidades

- Tela de login e controle de sessão (deslogar/sair)
- **Cadastros:** funcionários, editoras e livros
- **Consultas:** funcionários, editoras e livros
- **Relatórios:** funcionários, editoras e livros (FastReport — arquivos `.fr3`)
- Tela "Sobre"

## Tecnologias

- Delphi / Object Pascal (VCL)
- MySQL 5.7
- FastReport (relatórios)

## Estrutura

```
outer-space-bookstore/
├── Banco de dados/
│   └── outerspace.sql     # Dump do banco (criação das tabelas e dados)
└── Projeto/               # Código-fonte Delphi (.pas / .dfm / .dpr)
```

## Como executar

1. Crie o banco importando o dump no MySQL (por exemplo via phpMyAdmin ou linha de comando):
   ```bash
   mysql -u root -p < "Banco de dados/outerspace.sql"
   ```
2. Abra `Projeto/ProjetoOuterSpace.dproj` no Delphi.
3. Ajuste os parâmetros de conexão em `Projeto/Conetion.pas` (servidor, usuário e senha do seu MySQL).
4. Mantenha `libmysql.dll` junto ao executável e compile/execute o projeto (Win32).
