# Sistema de Gerenciamento da Biblioteca

Este repositório contém os scripts de automação, configurações de infraestrutura conteinerizada e definições de controle de acesso para o sistema de banco de dados da **Biblioteca**.

## 📂 Estrutura do Repositório e Artefatos (Tarefa 03)

Todos os arquivos de configuração de ambiente, orquestração de contêineres e scripts de automação desta etapa encontram-se organizados na **dentro da pasta tarefa03**.

Abaixo estão descritos os papéis de cada artefato essencial para a execução do projeto:

*   **`docker-compose.yml`**: Arquivo responsável por subir o serviço do SGBD MariaDB de forma isolada, configurando variáveis de ambiente iniciais, volumes persistentes e mapeamento de portas de rede.
*   **`.env.example`**: Modelo de arquivo de configuração contendo as variáveis de ambiente necessárias (como senhas do root, portas e credenciais). Serve como guia para que outros desenvolvedores criem seu próprio arquivo `.env` local sem expor dados sensíveis.
*   **`.gitignore`**: Arquivo de configuração do Git que define quais arquivos e diretórios não devem ser rastreados pelo controle de versão. Ele garante estritamente que arquivos de credenciais reais (como o `.env`) **nunca sejam versionados**, evitando vazamento de senhas no GitHub.
*   **`setup.sql`**: Script SQL completo e idempotente que automatiza toda a inicialização do banco de dados `biblioteca`. Ele reconstrói a estrutura de tabelas, chaves estrangeiras, popula o banco com dados de teste e gerencia a criação dos usuários (`app_biblioteca` e `consulta`) com suas respectivas permissões.