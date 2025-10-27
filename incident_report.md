# 📝 Relatório de Incidente - Wazuh SIEM

## 1. Informações Gerais

- **Data do incidente:** 27/10/2025
- **Hora do incidente:** 18:35
- **Sistema monitorado:** Ubuntu VM - Wazuh Agent Local
- **Autor do relatório:** Matheus da Rocha

---

## 2. Tipo de Incidente

| Categoria                        | Descrição                                          |
| -------------------------------- | ---------------------------------------------------- |
| Falha de autenticação          | Tentativa de login com usuário inexistente          |
| Alteração de arquivo sensível | Modificação das permissões do arquivo /etc/shadow |

---

## 3. Detalhes do Evento

### Falhas de autenticação

| Data/Hora        | Usuário            | IP        | Regra Wazuh                   | Nível |
| ---------------- | ------------------- | --------- | ----------------------------- | ------ |
| 27/10/2025 14:35 | usuario_inexistente | 10.0.2.15 | 5710 - Multiple failed logins | 5      |

**Descrição:** Usuário inexistente tentou acessar o sistema 3 vezes consecutivas. Alerta gerado pelo Wazuh no dashboard.

### Alteração de arquivo sensível

| Data/Hora        | Arquivo     | Regra Wazuh                | Nível |
| ---------------- | ----------- | -------------------------- | ------ |
| 27/10/2025 14:36 | /etc/shadow | 550 - System file modified | 7      |

**Descrição:** Arquivo `/etc/shadow` teve permissões alteradas temporariamente. Alerta gerado pelo Wazuh, detectando mudança em arquivo crítico.

---

## 4. Impacto

- Nenhum dano ao sistema (teste controlado)
- Demonstração de como o Wazuh detecta **tentativas de acesso inválidas** e **modificações em arquivos críticos**
- Útil para validar regras de detecção e resposta a incidentes

---

## 5. Ações Recomendadas

1. Revisar usuários do sistema e remover contas inexistentes.
2. Restaurar permissões corretas em arquivos sensíveis.
3. Configurar alertas no Wazuh para receber notificações em tempo real.
4. Testar scripts de auditoria regularmente.

---

## 6. Conclusão

O Wazuh detectou corretamente todos os eventos simulados pelo `test_events.sh`.
Este relatório demonstra a **capacidade de monitoramento e resposta a incidentes** do SIEM, servindo como referência para práticas de segurança em sistemas Linux.
