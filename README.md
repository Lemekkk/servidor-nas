# 📱 Servidor NAS Android (FTP via Termux)

[![Termux](https://img.shields.io/badge/Termux-Terminal-black?logo=termux)](#)
[![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)](#)
[![Licença](https://img.shields.io/badge/Licen%C3%A7a-MIT-green)](#)

Este projeto permite transformar o seu telemóvel Android num Servidor NAS (Network Attached Storage) através do protocolo FTP. Ele utiliza a aplicação **Termux** e um script em **Python** para partilhar os seus ficheiros na rede Wi-Fi local.

## 🗂️ Arquivos do Projeto

* `install.sh`: Script de instalação automática (atualiza o sistema, instala o Python e pede permissões).
* `start.sh`: Script para iniciar rapidamente o seu servidor FTP.
* `server.py`: O código principal em Python que define as configurações do servidor FTP.

## 🚀 Pré-requisitos

Antes de começar, precisa de instalar o **Termux** no seu telemóvel Android.
*Recomendação:* Descarregue o Termux através do **F-Droid** (a versão da Google Play Store está desatualizada).

## 🛠️ Passo a Passo de Instalação

1. **Abra o Termux** no seu telemóvel.
2. instale o pacote do git com este comando:
```bash
pkg install git
```
3. Clone este repositório ou descarregue os ficheiros para o Termux:
```bash
git clone https://github.com/Lemekkk/servidor-nas.git
```
3. Navegue até à pasta onde os ficheiros foram guardados.
4. Execute o script de instalação com o seguinte comando:

```bash
bash install.sh
```

5. **⚠️ Importante:** Durante a instalação, o ecrã do seu telemóvel vai mostrar um aviso a pedir permissão de acesso aos ficheiros ("Allow Termux to access photos, media, and files on your device"). **Toque em Permitir** para que o servidor consiga ler e partilhar os seus ficheiros.

## ▶️ Como Iniciar o Servidor

Sempre que quiser ligar o seu servidor NAS, basta abrir o Termux, aceder à pasta do projeto e executar:

```bash
bash start.sh
```

O terminal irá mostrar que o servidor está a correr e fornecerá um endereço IP (por exemplo: `ftp://192.1xx.xx.x:2121`).

## 💻 Como acessar os Ficheiros (Pelo Computador)

1. Certifique-se de que o telemóvel e o computador estão ligados **à mesma rede Wi-Fi**.
2. No seu computador, abra o Explorador de Ficheiros (Windows) ou Finder (Mac).
3. Na barra de endereços, digite o IP fornecido pelo Termux (ex: `ftp://192.168.1.X:2121`) e prima Enter.
4. Já está! Agora pode ver, copiar e enviar ficheiros diretamente para o seu telemóvel sem precisar de cabos.

## 📁 Como ligar na app "Meus Arquivos" (Samsung)

1. Abra a app **Meus Arquivos** no seu Samsung.
2. Deslize até encontrar a secção **Armazenamento de rede** e toque nela.
3. Toque no ícone **+** (ou "Adicionar armazenamento de rede") e selecione **Servidor FTP**.
4. Preencha os dados exatamente como apareceram no Termux:
   * **Endereço do Servidor:** (O IP mostrado no ecrã)
   * **Porta:** 2121
   * **Nome de utilizador:** admin (ou o que configurou)
   * **Palavra-passe:** 1234 (ou a que configurou)
5. Toque em **Adicionar/Guardar**. Pronto! Agora o seu telemóvel funciona como um disco de rede.

## 🛑 Como Parar o Servidor

Para desligar o servidor, volte à aplicação Termux e prima as teclas:
`CTRL + C`
