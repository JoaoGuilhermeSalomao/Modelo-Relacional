## Documentação Simplificada do Modelo Relacional

**Projeto:** Abandono Zero

**Data:** 2024-05-08

**Autor:** João Guilherme de Jesus Salomão

**Objetivo:** Descrever o modelo relacional do projeto de forma resumida e simplificada.

## Entidades

- **Usuários** (`users`): Armazena informações básicas sobre os usuários (email e senha).
- **Endereço** (`address`): Armazena as informações geográficas dos usuários (país, estado, cidade e bairro).
- **Formulários**
  - **Geral** (`general-forms`): Detalhes gerais do usuário (nome completo, numero de telefone, renda, moradia, etc.).
  - **Já Teve Cão** (`had-forms`): Informações sobre o cão que o usuário já teve(nome, personalidade, etc.).
  - **Possui Cão** (`have-forms`): Informações sobre o cão que o usuário possui (raça, idade, etc.).
  - **Deseja Cão** (`want-forms`): Informações sobre o cão que o usuário deseja ter (tamanho, pelagem, cor, etc.).
  - **Sem Cão** (`null-forms`): Motivo pelo qual o usuário não tem e não deseja ter um cão. 
- **Cachorros** (`dog-forms`): Informações gerais sobre o cão (nome, genero, raça, etc)

## Relacionamentos

- Um usuário pode ter um único formulário geral (1:1).
- Um usuário pode ter vários formulários de cães (1:N).
- Um usuário pode responder o mesmo formulário mais de uma vez (1:N).

## Regras de Negócio

- Todos os campos obrigatórios devem ser preenchidos.
- As informações devem ser consistentes entre os formulários.
- Os usuários não podem editar informações já salvas, exceto em casos específicos.
- As informações dos usuários são confidenciais.

## Diagrama

[Diagrama simplificado do modelo relacional (opcional)]

## Considerações Finais

Este modelo relacional simplificado fornece uma base para o gerenciamento eficiente das informações dos usuários e suas respostas nos formulários do projeto Abandono Zero. As entidades, seus atributos e relacionamentos garantem a organização e a integridade dos dados. As regras de negócio garantem a consistência e a confiabilidade das informações.

**Observações:**

- Este modelo é uma versão simplificada e pode ser adaptado às necessidades específicas do projeto.
- É importante documentar detalhadamente o modelo relacional para facilitar o entendimento e a manutenção do sistema.
- A implementação do modelo relacional deve seguir boas práticas de desenvolvimento de banco de dados.