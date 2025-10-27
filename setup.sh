#!/bin/bash

# ============================================
# Setup Automático do Wazuh SIEM (Ubuntu)
# ============================================

# Atualizar repositório e pacotes
echo "[*] Atualizando pacotes do sistema..."
sudo apt update && sudo apt upgrade -y

# Baixar o script oficial de instalação do Wazuh
echo "[*] Baixando script de instalação do Wazuh..."
curl -sO https://packages.wazuh.com/4.9/wazuh-install.sh

# Executar o script de instalação com a opção "all-in-one"
echo "[*] Instalando Wazuh Server + Elastic + Kibana..."
sudo bash ./wazuh-install.sh -a

# Mensagem final
echo "[✓] Instalação concluída!"
echo "Acesse o dashboard em: https://<IP-DA-VM>"
echo "Usuário: admin | Senha: <gerada durante a instalação>"
