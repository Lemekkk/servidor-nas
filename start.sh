#!/bin/bash

# Descobre o IP local do telemóvel na rede Wi-Fi
IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -n 1)

clear
echo "============================================="
echo "           SERVIDOR FTP INICIADO!            "
echo "============================================="
echo "Configure no 'Armazenamento de rede' Samsung:"
echo ""
echo " Endereço do Servidor : $IP"
echo " Porta                : 2121"
echo " Utilizador           : admin"
echo " Palavra-passe        : 1234"
echo "============================================="
echo "Prima CTRL+C no teclado do Termux para encerrar."
echo ""

# Inicia o script Python
python server.py
