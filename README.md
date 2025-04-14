### Projeto Aplicado – Engenharia e Arquitetura de Dados
Bem-vindo!
Este repositório reúne o conteúdo do meu Projeto Aplicado para a pós-graduação em Engenharia e Arquitetura de Dados.

### Objetivo
O objetivo principal do projeto é construir uma solução completa de Business Intelligence (BI), passando por todas as etapas do pipeline de dados — da extração à visualização — com foco em governança, escalabilidade e boas práticas de engenharia de dados.

### Tecnologias e Ferramentas
- dbt (Data Build Tool): utilizado para construção do pipeline de transformação de dados, seguindo a arquitetura Medallion (bronze, silver, gold), com implementação de testes e documentação.
- Snowflake: banco de dados em nuvem usado como Data Warehouse, onde os dados tratados são armazenados e otimizados para consumo.
- Power BI: ferramenta de visualização utilizada para criação dos dashboards e análise final dos dados transformados.

### Estrutura do Repositório
├── analyses/                # Análises SQL auxiliares para exploração e validação

├── macros/                  # Macros customizadas do projeto

├── models/                  # Modelos dbt (staging, intermediate e marts)

├── seeds/                   # Dados estáticos utilizados como base de referência no dbt

├── snapshots/               # Snapshots dbt (se utilizados)

├── tests/                   # Testes automatizados (source, unique, not_null, etc.)

├── dbt_project.yml          # Configuração principal do projeto dbt

└── README.md                # Este arquivo

### Testes e Governança
Foram implementados testes automatizados com foco em:
- Validação de fontes de dados (source tests)
- Unicidade e obrigatoriedade de chaves primárias (key tests)
- Consistência entre camadas

### Visualizações
Os dashboards foram desenvolvidos no Power BI, utilizando os dados disponíveis na camada gold do Data Warehouse, com foco na análise de vendas e desempenho de produtos.

### Documentação
A documentação completa das tabelas, colunas e relacionamentos está presente no arquivo .yml de cada tabela dentro da pasta 'models'.
