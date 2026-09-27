# 📱 Servidor NAS Android (FTP via Termux)

[![Termux](https://img.shields.io/badge/Termux-Terminal-black?logo=termux)](#)
[![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)](#)
[![Licença](https://img.shields.io/badge/Licen%C3%A7a-MIT-green)](#)

Este projeto transforma o seu smartphone ou tablet Android num **Servidor NAS local (Network Attached Storage)** super leve, utilizando o protocolo FTP. 

Ele foi desenhado especificamente para ser **simples de instalar** e para se integrar perfeitamente a gestores de ficheiros nativos, como a função **"Armazenamento de rede" da Samsung**, exploradores do Windows ou gestores no Linux e macOS — tudo isso **sem necessidade de Root**.

---

## ✨ Funcionalidades

- **Zero Root:** Funciona em qualquer dispositivo Android comum.
- **Integração Nativa:** Conecta-se diretamente ao app "Meus Arquivos" (Samsung), Explorador de Arquivos (Windows) e Finder (Mac).
- **Leve e Rápido:** Baseado em Python (`pyftpdlib`), consome pouquíssima bateria e memória.
- **Instalação Automática:** Um script simples de instalação faz todo o trabalho de dependências.
- **Sem complicações de arquitetura:** Diferente de binários compilados, este script roda em qualquer processador (ARM, ARM64, x86) graças ao Python.

---

## ⚠️ Pré-requisitos

1. Um dispositivo Android conectado a uma rede Wi-Fi.
2. O aplicativo **Termux**.
   > **Atenção:** Baixe o Termux através do [F-Droid](https://f-droid.org/packages/com.termux/) ou do [GitHub oficial do Termux](https://github.com/termux/termux-app/releases). **Não use a versão da Google Play Store**, pois ela está descontinuada e apresentará erros.

---

## 🚀 Instalação

Abra o Termux no seu telemóvel e execute os comandos abaixo, um por um:

1. Clone este repositório:
```bash
git clone [https://github.com/Lemekkk/servidor-nas.git](https://github.com/Lemekkk/servidor-nas.git)
