# FastAPI com Docker - Projeto Básico

Este é um projeto básico que demonstra como usar FastAPI com Docker.

## Funcionalidades

- API REST básica com FastAPI
- Containerização com Docker
- Documentação automática da API (Swagger UI)

## Como Executar

1. Construir a imagem:
```bash
docker build -t fastapi-app .
```

2. Executar o container:
```bash
docker run -d -p 8000:8000 fastapi-app
```

Ou usando Docker Compose:
```bash
docker-compose up -d
```

## Endpoints

- `GET /`: Mensagem de boas-vindas
- `GET /items/{item_id}`: Retorna um item específico
- `POST /items/`: Cria um novo item

## Documentação da API

Acesse a documentação Swagger UI em:
- http://localhost:8000/docs

## Tecnologias Utilizadas

- Python 3.11
- FastAPI
- Docker
- Docker Compose 