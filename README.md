# Hub de Conhecimento Docker 🐳

Este repositório serve como um hub de conhecimento sobre Docker, contendo exemplos práticos, scripts úteis e tutoriais para facilitar o aprendizado e uso do Docker.

## 📚 Índice

1. [Fundamentos do Docker](#fundamentos-do-docker)
2. [Scripts Úteis](#scripts-úteis)
3. [Docker Compose](#docker-compose)
4. [Projetos de Exemplo](#projetos-de-exemplo)
5. [Tutoriais](#tutoriais)
6. [Comandos Básicos](#comandos-básicos)

## Fundamentos do Docker

### O que é Docker?
Docker é uma plataforma de containerização que permite empacotar aplicações e suas dependências em containers isolados, garantindo que a aplicação funcione de forma consistente em diferentes ambientes.

### Conceitos Básicos
- **Container**: Uma unidade isolada que contém tudo necessário para executar uma aplicação
- **Imagem**: Um template somente leitura que contém as instruções para criar um container
- **Dockerfile**: Um arquivo de texto que contém instruções para construir uma imagem
- **Registry**: Um repositório de imagens Docker (ex: Docker Hub)

## Scripts Úteis

### Scripts Disponíveis
- `docker.sh`: Script para gerenciar containers Docker
- `docker-compose.sh`: Script para gerenciar aplicações com Docker Compose
- `cleanup.sh`: Script para limpar recursos Docker não utilizados

### Como Usar os Scripts
```bash
# Para executar um container
./docker.sh run

# Para parar todos os containers
./docker.sh stop

# Para remover containers parados
./docker.sh clean
```

## Docker Compose

Docker Compose é uma ferramenta para definir e executar aplicações multi-container. Ele usa um arquivo YAML para configurar os serviços da aplicação.

### Conceitos do Docker Compose
- **Services**: Define os containers que compõem a aplicação
- **Networks**: Configura a comunicação entre containers
- **Volumes**: Gerencia o armazenamento persistente
- **Environment Variables**: Define variáveis de ambiente

### Exemplo de docker-compose.yml
```yaml
version: '3.8'
services:
  web:
    build: .
    ports:
      - "8080:80"
  db:
    image: postgres:latest
    environment:
      POSTGRES_DB: mydb
```

### Comandos Docker Compose
```bash
# Iniciar serviços
docker-compose up

# Parar serviços
docker-compose down

# Reconstruir imagens
docker-compose build

# Ver logs
docker-compose logs
```

## Projetos de Exemplo

Este repositório contém vários projetos de exemplo para demonstrar diferentes aspectos do Docker:

### 1. FastAPI Básico
- Localização: `app01-docker-basico-python-FastAPI`
- Descrição: API REST básica com FastAPI
- Nível: Iniciante
- Tecnologias: Python, FastAPI, Docker

### 2. FastAPI com React
- Localização: `app02-docker-FastAPI-React`
- Descrição: Aplicação Todo List com FastAPI e React
- Nível: Intermediário
- Tecnologias: Python, FastAPI, React, Docker Compose

### 3. FastAPI com React e PostgreSQL
- Localização: `app03-docker-FastAPI-React-Postgress`
- Descrição: Aplicação completa com banco de dados
- Nível: Avançado
- Tecnologias: Python, FastAPI, React, PostgreSQL, Docker Compose

### 4. Node.js com React e PostgreSQL
- Localização: `app04-docker-node-React-postegress`
- Descrição: Aplicação com Node.js no backend
- Nível: Avançado
- Tecnologias: Node.js, React, PostgreSQL, Docker Compose

### 5. Go com React e PostgreSQL
- Localização: `app05-docker-go-react-postgress`
- Descrição: Aplicação com Go no backend
- Nível: Avançado
- Tecnologias: Go, React, PostgreSQL, Docker Compose

## Tutoriais

### 1. Primeiros Passos
1. Instale o Docker
2. Execute seu primeiro container: `docker run hello-world`
3. Crie sua primeira imagem com Dockerfile

### 2. Trabalhando com Volumes
- Volumes são usados para persistir dados
- Exemplo: `docker volume create meu-volume`

### 3. Networking
- Redes Docker permitem comunicação entre containers
- Tipos: bridge, host, none

## Comandos Básicos

```bash
# Listar containers
docker ps

# Listar imagens
docker images

# Construir uma imagem
docker build -t minha-imagem .

# Executar um container
docker run -d -p 8080:80 minha-imagem

# Parar um container
docker stop container_id

# Remover um container
docker rm container_id
```

## 🚀 Próximos Passos

1. Explore os exemplos práticos nos diretórios `app01` até `app05`
2. Experimente os scripts disponíveis
3. Crie seus próprios containers e imagens
4. Aprenda sobre Docker Compose para orquestração

## 📝 Recursos Adicionais

- [Documentação Oficial do Docker](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
