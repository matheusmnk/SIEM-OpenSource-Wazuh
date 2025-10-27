#!/bin/bash

# ============================================
# Script de Teste de Eventos - Wazuh SIEM
# ============================================
# Este script gera eventos de teste no sistema para que o
# Wazuh detecte e alerte no dashboard.
# Inclui:
# 1) Falhas de autenticação
# 2) Alteração de arquivo sensível (/etc/shadow)
# ============================================

# --- Falhas de autenticação ---
echo "[*] Gerando eventos de autenticação falha..."
# Loop 3 vezes tentando executar comando com usuário inexistente
# Redirecionamos saída para /dev/null para não poluir o terminal
for i in {1..3}; do
    sudo -u usuario_inexistente ls >/dev/null 2>&1
done

# --- Alteração de arquivo sensível ---
echo "[*] Gerando evento de alteração de arquivo sensível..."
# Cria ou atualiza a timestamp do arquivo /etc/shadow
sudo touch /etc/shadow
# Dá permissões temporárias para gerar evento de alerta (Wazuh monitora mudanças de permissão)
sudo chmod 777 /etc/shadow
# Restaura permissões seguras
sudo chmod 640 /etc/shadow

# --- Conclusão ---
echo "[✓] Testes concluídos! Verifique o painel do Wazuh para ver os alertas gerados."
