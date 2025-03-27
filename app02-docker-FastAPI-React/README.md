# Todo App com FastAPI e React

Este é um projeto de exemplo que demonstra como criar uma aplicação Todo List usando FastAPI no backend e React no frontend, ambos containerizados com Docker.

## Funcionalidades

- Backend REST API com FastAPI
- Frontend React com interface moderna
- Gerenciamento de estado com React Hooks
- Containerização com Docker
- Comunicação entre containers com Docker Compose

## Estrutura do Projeto

```
.
├── backend/
│   ├── Dockerfile
│   ├── requirements.txt
│   └── main.py
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

## Endpoints da API

- `GET /todos`: Lista todas as tarefas
- `POST /todos`: Cria uma nova tarefa
- `PUT /todos/{todo_id}`: Atualiza uma tarefa
- `DELETE /todos/{todo_id}`: Remove uma tarefa

## Tecnologias Utilizadas

- Backend:
  - Python 3.11
  - FastAPI
  - Docker

- Frontend:
  - React
  - Axios
  - Docker

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