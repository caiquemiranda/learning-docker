# Todo App com Go, React e PostgreSQL

Este é um projeto de aplicação Todo List construído com Go no backend, React no frontend e PostgreSQL como banco de dados.

## Tecnologias Utilizadas

- Backend: Go (Gin Framework)
- Frontend: React
- Banco de Dados: PostgreSQL
- Containerização: Docker e Docker Compose

## Pré-requisitos

- Docker
- Docker Compose

## Como Executar

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd app05-docker-go-react-postgress
```

2. Inicie os containers com Docker Compose:
```bash
docker-compose up --build
```

3. Acesse a aplicação:
- Frontend: http://localhost:3000
- Backend API: http://localhost:8000
- PostgreSQL: localhost:5432

## Estrutura do Projeto

```
app05-docker-go-react-postgress/
├── backend/
│   ├── main.go
│   ├── go.mod
│   ├── go.sum
│   └── Dockerfile
├── frontend/
│   ├── src/
│   ├── public/
│   ├── package.json
│   └── Dockerfile
├── docker-compose.yml
└── README.md
```

## Endpoints da API

- GET /todos - Lista todas as tarefas
- POST /todos - Cria uma nova tarefa
- PUT /todos/:id - Atualiza uma tarefa existente
- DELETE /todos/:id - Remove uma tarefa

## Desenvolvimento

Para desenvolvimento local:

1. Backend:
```bash
cd backend
go mod download
go run main.go
```

2. Frontend:
```bash
cd frontend
npm install
npm start
```

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes. 