#!/bin/bash

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Função para mostrar ajuda
show_help() {
    echo -e "${YELLOW}Docker Compose Manager Script${NC}"
    echo "Uso: ./docker-compose.sh [comando]"
    echo ""
    echo "Comandos disponíveis:"
    echo "  up      - Inicia os serviços"
    echo "  down    - Para e remove os serviços"
    echo "  build   - Reconstrói as imagens"
    echo "  logs    - Mostra logs dos serviços"
    echo "  ps      - Lista os serviços em execução"
    echo "  help    - Mostra esta ajuda"
}

# Função para iniciar serviços
start_services() {
    echo -e "${GREEN}Iniciando serviços...${NC}"
    docker-compose up -d
}

# Função para parar serviços
stop_services() {
    echo -e "${YELLOW}Parando serviços...${NC}"
    docker-compose down
}

# Função para reconstruir imagens
rebuild_images() {
    echo -e "${GREEN}Reconstruindo imagens...${NC}"
    docker-compose build --no-cache
}

# Função para mostrar logs
show_logs() {
    echo -e "${GREEN}Mostrando logs dos serviços:${NC}"
    docker-compose logs -f
}

# Função para listar serviços
list_services() {
    echo -e "${GREEN}Serviços em execução:${NC}"
    docker-compose ps
}

# Processamento dos comandos
case "$1" in
    "up")
        start_services
        ;;
    "down")
        stop_services
        ;;
    "build")
        rebuild_images
        ;;
    "logs")
        show_logs
        ;;
    "ps")
        list_services
        ;;
    "help"|"")
        show_help
        ;;
    *)
        echo -e "${RED}Comando desconhecido. Use 'help' para ver os comandos disponíveis.${NC}"
        exit 1
        ;;
esac 