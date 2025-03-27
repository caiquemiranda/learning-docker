# Todo App com FastAPI, React e PostgreSQL

Este é um projeto de exemplo que demonstra como criar uma aplicação Todo List usando FastAPI no backend, React no frontend e PostgreSQL como banco de dados, todos containerizados com Docker.

## Funcionalidades

- Backend REST API com FastAPI
- Frontend React com interface moderna
- Banco de dados PostgreSQL
- Gerenciamento de estado com React Hooks
- Containerização com Docker
- Comunicação entre containers com Docker Compose
- Persistência de dados com volumes Docker

## Estrutura do Projeto

```
.
├── backend/
│   ├── Dockerfile
│   ├── requirements.txt
│   ├── main.py
│   ├── database.py
│   ├── models.py
│   └── schemas.py
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   └── src/
│       ├── App.js
│       └── App.css
└── docker-compose.yml
```

## Como Executar

1. Clone o repositório
2. Navegue até o diretório do projeto
3. Execute com Docker Compose:
```bash
docker-compose up --build
```

4. Acesse a aplicação:
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:8000
   - Documentação da API: http://localhost:8000/docs
   - PostgreSQL: localhost:5432

## Endpoints da API

- `GET /todos`: Lista todas as tarefas
- `POST /todos`: Cria uma nova tarefa
- `PUT /todos/{todo_id}`: Atualiza uma tarefa
- `DELETE /todos/{todo_id}`: Remove uma tarefa

## Tecnologias Utilizadas

- Backend:
  - Python 3.11
  - FastAPI
  - SQLAlchemy
  - PostgreSQL
  - Docker

- Frontend:
  - React
  - Axios
  - Docker

- Banco de Dados:
  - PostgreSQL 15
  - Docker Volume para persistência

## Desenvolvimento

Para desenvolvimento local:

1. Backend:
```bash
cd backend
pip install -r requirements.txt
uvicorn main:app --reload
```

2. Frontend:
```bash
cd frontend
npm install
npm start
```

3. Banco de Dados:
```bash
docker run -d -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=todos postgres:15
``` 