import os
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer

# Define a pasta a ser partilhada (raiz do armazenamento interno no Termux)
PASTA_PARTILHADA = "/data/data/com.termux/files/home/storage/shared"

# Caso a permissão de armazenamento ainda não tenha sido processada, usa a pasta atual
if not os.path.exists(PASTA_PARTILHADA):
    PASTA_PARTILHADA = os.getcwd()

authorizer = DummyAuthorizer()

# Cria o utilizador. Alterar "admin" e "1234" conforme preferir.
# As permissões "elradfmwMT" garantem controlo total (ler, escrever, apagar, criar pastas).
authorizer.add_user("admin", "1234", PASTA_PARTILHADA, perm="elradfmwMT")

handler = FTPHandler
handler.authorizer = authorizer

# --- OTIMIZAÇÃO DE VELOCIDADE ---
# Usa transferência direta do sistema operacional, poupando a CPU do celular
handler.use_sendfile = True
# --------------------------------

# Inicia o servidor na porta 2121
server = FTPServer(("0.0.0.0", 2121), handler)
server.serve_forever()
