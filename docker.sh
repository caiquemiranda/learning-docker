#!/bin/bash

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Função para mostrar ajuda
show_help() {
    echo -e "${YELLOW}Docker Manager Script${NC}"
    echo "Uso: ./docker.sh [comando]"
    echo ""
    echo "Comandos disponíveis:"
    echo "  run     - Executa um container"
    echo "  stop    - Para todos os containers em execução"
    echo "  clean   - Remove containers parados"
    echo "  list    - Lista containers e imagens"
    echo "  logs    - Mostra logs dos containers"
    echo "  help    - Mostra esta ajuda"
}

# Função para executar container
run_container() {
    echo -e "${GREEN}Executando container...${NC}"
    docker run -d --name meu-container nginx
}

# Função para parar containers
stop_containers() {
    echo -e "${YELLOW}Parando containers...${NC}"
    docker stop $(docker ps -q)
}

# Função para limpar containers parados
clean_containers() {
    echo -e "${YELLOW}Limpando containers parados...${NC}"
    docker rm $(docker ps -a -q)
}

# Função para listar containers e imagens
list_resources() {
    echo -e "${GREEN}Containers:${NC}"
    docker ps -a
    echo -e "\n${GREEN}Imagens:${NC}"
    docker images
}

# Função para mostrar logs
show_logs() {
    echo -e "${GREEN}Mostrando logs dos containers:${NC}"
    docker logs $(docker ps -q)
}

# Processamento dos comandos
case "$1" in
    "run")
        run_container
        ;;
    "stop")
        stop_containers
        ;;
    "clean")
        clean_containers
        ;;
    "list")
        list_resources
        ;;
    "logs")
        show_logs
        ;;
    "help"|"")
        show_help
        ;;
    *)
        echo -e "${RED}Comando desconhecido. Use 'help' para ver os comandos disponíveis.${NC}"
        exit 1
        ;;
esac
