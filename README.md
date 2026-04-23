📊 Análise de Vendas - Móveis Planejados (SQL)
📝 Descrição do Projeto
Este projeto foi desenvolvido para simular o ecossistema de dados de uma empresa de móveis planejados. O objetivo principal foi criar uma estrutura de banco de dados relacional capaz de gerenciar produtos e vendas, permitindo a extração de métricas de faturamento e desempenho comercial.

🛠️ Tecnologias e Ferramentas
Banco de Dados: MySQL

Ambiente Local: WAMP Server

Interface: MySQL Workbench

🚀 Conceitos Aplicados
Modelagem de Dados (DDL): Criação de tabelas com tipos de dados otimizados (DECIMAL para valores financeiros, DATE para registros temporais).

Relacionamentos: Implementação de PRIMARY KEY e FOREIGN KEY para garantir a integridade referencial entre as tabelas de produtos e vendas.

Manipulação de Dados (DML): Povoamento do banco com dados de teste para simulação de cenários reais.

Consultas Avançadas: Uso de INNER JOIN para consolidação de dados e cálculos matemáticos em tempo real para geração de relatórios de faturamento.

📈 Exemplo de Resultado (Query de Faturamento)
A consulta principal realiza o cruzamento entre as tabelas de vendas e produtos para calcular o valor total por transação:

SELECT 
    p.nome_produto, 
    v.data_venda,
    v.quantidade, 
    (v.quantidade * p.preco) AS total_venda
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto;

<img width="1917" height="1030" alt="image" src="https://github.com/user-attachments/assets/a3a50035-2c85-423a-9b24-4f965a1f862e" />
