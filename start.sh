#!/bin/bash

clear
echo "============================================="
echo "        CONFIGURAÇÃO DE SEGURANÇA            "
echo "============================================="

# Extrai o utilizador e senha atuais direto do ficheiro server.py
USER_ATUAL=$(grep "authorizer.add_user" server.py | awk -F'"' '{print $2}')
SENHA_ATUAL=$(grep "authorizer.add_user" server.py | awk -F'"' '{print $4}')

echo "Gostaria de trocar o utilizador e a senha do servidor? (s/n)"
read -p "> " resposta

if [[ "$resposta" == "s" || "$resposta" == "S" ]]; then
    echo ""
    read -p "Digite o NOVO nome de utilizador: " NOVO_USER
    read -p "Digite a NOVA senha: " NOVA_SENHA

    # Verifica se o usuário não deixou os campos em branco
    if [[ -n "$NOVO_USER" && -n "$NOVA_SENHA" ]]; then
        # Comando SED que procura os dados antigos no server.py e troca pelos novos
        sed -i -E "s/authorizer\.add_user\(\"[^\"]*\", \"[^\"]*\"/authorizer.add_user(\"$NOVO_USER\", \"$NOVA_SENHA\"/" server.py
        
        # Atualiza as variáveis para mostrar os dados corretos no final
        USER_ATUAL=$NOVO_USER
        SENHA_ATUAL=$NOVA_SENHA
        echo ""
        echo "[+] Credenciais atualizadas com sucesso!"
        sleep 2
    else
        echo ""
        echo "[-] Você deixou algum campo vazio! Mantendo as credenciais antigas."
        sleep 2
    fi
fi

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
echo " Utilizador           : $USER_ATUAL"
echo " Senha                : $SENHA_ATUAL"
echo "============================================="
echo "Pressione CTRL+C no teclado do Termux para encerrar."
echo ""

# Inicia o servidor Python
python server.py
