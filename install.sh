#!/bin/bash

echo "=========================================="
echo "    INSTALAÇÃO DO SERVIDOR FTP ANDROID    "
echo "=========================================="

echo "[+] A atualizar pacotes do sistema..."
pkg update -y && pkg upgrade -y

echo "[+] A instalar Python e dependências..."
pkg install python -y
pip install pyftpdlib

echo "[+] A solicitar permissões de armazenamento..."
echo "--> Por favor, prima 'Permitir' no ecrã do seu telemóvel."
termux-setup-storage

# Aguarda 2 segundos para o utilizador aceitar
sleep 2

echo "=========================================="
echo " Instalação concluída com sucesso!        "
echo " Para iniciar o servidor, execute:        "
echo " bash start.sh                            "
echo "=========================================="
