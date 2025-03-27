# Todo App com Go, React e PostgreSQL

Este é um projeto de exemplo que demonstra como criar uma aplicação Todo usando Go para o backend, React para o frontend e PostgreSQL como banco de dados, tudo containerizado com Docker.

## Tecnologias Utilizadas

- Backend: Go com Gin framework
- Frontend: React
- Banco de Dados: PostgreSQL
- Containerização: Docker e Docker Compose

## Estrutura do Projeto

```
.
├── backend/
│   ├── Dockerfile
│   ├── go.mod
│   ├── go.sum
│   └── main.go
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   ├── public/
│   └── src/
│       ├── App.js
│       └── App.css
└── docker-compose.yml
```

## Funcionalidades

- Criar novas tarefas com título e descrição
- Marcar tarefas como concluídas
- Excluir tarefas
- Listar todas as tarefas
- Interface responsiva e moderna

## Pré-requisitos

- Docker
- Docker Compose

## Como Executar

1. Clone o repositório:
   ```bash
   git clone <seu-repositorio>
   cd app05-docker-go-react-postgress
   ```

2. Inicie os containers:
   ```bash
   docker-compose up --build
   ```

3. Acesse a aplicação:
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:8000

## Endpoints da API

- `GET /todos` - Lista todas as tarefas
- `POST /todos` - Cria uma nova tarefa
- `PUT /todos/:id` - Atualiza uma tarefa existente
- `DELETE /todos/:id` - Remove uma tarefa

## Exemplo de Uso

1. Abra o navegador e acesse http://localhost:3000
2. Use o formulário para criar novas tarefas
3. Marque as tarefas como concluídas usando o checkbox
4. Exclua tarefas usando o botão de deletar

## Desenvolvimento

### Backend (Go)

O backend é desenvolvido em Go usando o framework Gin. Para desenvolvimento local:

```bash
cd backend
go mod download
go run main.go
```

### Frontend (React)

O frontend é desenvolvido em React. Para desenvolvimento local:

```bash
cd frontend
npm install
npm start
```

## Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes. 