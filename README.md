# 🧩 Desafio: Modelo de Domínio e ORM

## 🎯 Objetivo

Criar um projeto **Spring Boot** utilizando **Java** e **banco de dados H2**, implementando o **modelo conceitual** descrito neste documento.  
Além disso, é necessário realizar o **seeding da base de dados** (inserção inicial de dados) conforme o **diagrama de objetos** apresentado.

---

## 🚀 Entrega

O projeto deve ser hospedado em um **repositório público no GitHub**, permitindo que seja clonado e executado localmente.

---

## ✅ Critérios de Avaliação

O avaliador irá:

1. Clonar o repositório do GitHub.  
2. Executar o projeto localmente.  
3. Verificar se:
   - O projeto **executa sem erros**;
   - O **banco de dados H2** é criado corretamente;
   - O **H2 Console** exibe todas as **tabelas esperadas**, com seus **relacionamentos**;
   - Os **dados de seeding** estão corretamente inseridos em cada tabela.

---

## 🧠 Especificação — Sistema **EVENTO**

O sistema deve **gerenciar as informações dos participantes e das atividades** de um evento acadêmico.

### Entidades Principais

#### **Atividade**
Cada atividade representa uma ação dentro do evento (ex: palestra, curso, oficina).  
Cada atividade possui:
- **Nome**
- **Descrição**
- **Preço**
- **Blocos de horário (slots)** — uma mesma atividade pode ocorrer em diferentes dias e horários.  
  - Cada bloco deve armazenar:
    - Dia
    - Horário de início
    - Horário de término

#### **Participante**
Cada participante deve ter:
- **Nome**
- **E-mail**

---

## 🧩 Requisitos do Modelo de Domínio

O modelo deve refletir as relações adequadas entre **atividades**, **participantes** e **blocos de horários**, incluindo:
- Associação entre participantes e atividades;
- Associação entre atividades e blocos de horários.

---

## 🌱 Seeding (Dados Iniciais)

A base de dados deve ser populada automaticamente com **instâncias de exemplo** para fins de teste e validação.

### Diagrama Entidade-Relacionamento

```mermaid
erDiagram
    PARTICIPANTE {
        int id
        string nome
        string email
    }

    ATIVIDADE {
        int id
        string nome
        string descricao
        double preco
    }

    SLOT {
        int id
        datetime inicio
        datetime fim
        string dia
    }

    PARTICIPANTE ||--o{ ATIVIDADE : "participa de"
    ATIVIDADE ||--o{ SLOT : "possui"
```

### Dados de Seeding

#### **Participantes**
| ID | Nome         | E-mail          |
|----|---------------|----------------|
| 1  | Alex Brown    | alex@gmail.com |
| 2  | Bob Grey      | bob@gmail.com  |
| 3  | Maria Green   | maria@gmail.com|

#### **Atividades**
| ID | Nome              | Descrição                                 | Preço |
|----|-------------------|-------------------------------------------|-------|
| 1  | Curso de HTML     | Aprenda HTML de forma prática             | 80.0  |
| 2  | Oficina de Docker | Prática com containers Docker             | 100.0 |
| 3  | Palestra de IA    | Inteligência Artificial aplicada a negócios | 0.0   |

#### **Blocos de Horário (Slots)**
| ID | Dia  | Início            | Fim              |
|----|------|-------------------|------------------|
| 1  | Dia 1 | 2024-07-10 10:00 | 2024-07-10 12:00 |
| 2  | Dia 2 | 2024-07-11 14:00 | 2024-07-11 17:00 |
| 3  | Dia 3 | 2024-07-12 09:00 | 2024-07-12 11:00 |

---