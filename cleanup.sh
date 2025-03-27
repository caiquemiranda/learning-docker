#!/bin/bash

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Função para mostrar ajuda
show_help() {
    echo -e "${YELLOW}Docker Cleanup Script${NC}"
    echo "Uso: ./cleanup.sh [comando]"
    echo ""
    echo "Comandos disponíveis:"
    echo "  all     - Remove containers, imagens e volumes não utilizados"
    echo "  containers - Remove containers parados"
    echo "  images  - Remove imagens não utilizadas"
    echo "  volumes - Remove volumes não utilizados"
    echo "  help    - Mostra esta ajuda"
}

# Função para limpar containers
clean_containers() {
    echo -e "${YELLOW}Removendo containers parados...${NC}"
    docker container prune -f
}

# Função para limpar imagens
clean_images() {
    echo -e "${YELLOW}Removendo imagens não utilizadas...${NC}"
    docker image prune -f
}

# Função para limpar volumes
clean_volumes() {
    echo -e "${YELLOW}Removendo volumes não utilizados...${NC}"
    docker volume prune -f
}

# Função para limpar tudo
clean_all() {
    echo -e "${RED}Removendo todos os recursos não utilizados...${NC}"
    docker system prune -af --volumes
}

# Processamento dos comandos
case "$1" in
    "all")
        clean_all
        ;;
    "containers")
        clean_containers
        ;;
    "images")
        clean_images
        ;;
    "volumes")
        clean_volumes
        ;;
    "help"|"")
        show_help
        ;;
    *)
        echo -e "${RED}Comando desconhecido. Use 'help' para ver os comandos disponíveis.${NC}"
        exit 1
        ;;
esac 