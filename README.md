🛡️ SIEM Open-Source com Wazuh

Este projeto demonstra a implementação de um **SIEM (Security Information and Event Management)** open-source utilizando o  **Wazuh** , rodando em uma VM  **Linux Ubuntu** .

O objetivo é mostrar a **instalação, configuração, monitoramento e detecção de incidentes** de segurança, simulando eventos reais e analisando-os via dashboard do Wazuh.

---

## ⚙️ Arquitetura

| Componente                 | Função                                            |
| -------------------------- | --------------------------------------------------- |
| **Wazuh Server**     | Coleta, correlaciona e exibe eventos de segurança. |
| **Wazuh Agent**      | Envia logs e eventos do sistema para o servidor.    |
| **Elastic + Kibana** | Armazenam e exibem os alertas em dashboards.        |

---

## 🚀 Instalação

Você tem duas opções para instalar o Wazuh na sua VM Ubuntu:

### 1️⃣ Manual

```bash
curl -sO https://packages.wazuh.com/4.9/wazuh-install.sh
sudo bash ./wazuh-install.sh -a
```

Ao finalizar, o terminal mostrará algo como:

```
Installation finished.
Access the Wazuh dashboard at: https://<ip-da-vm>
User: admin
Password: <senha-gerada>
```

> Dica: Descubra o IP da VM com `ip addr show` e abra o dashboard no navegador.

---

### 2️⃣ Automatizado via `setup.sh`

Faça o download do arquivo `setup.sh` na raiz do projeto com o seguinte conteúdo:

```bash
chmod +x setup.sh
./setup.sh
```

> Assim você automatiza toda a instalação e já deixa o Wazuh pronto para uso.

---

## 🧪 Testando o Monitoramento

Após a instalação, você pode simular eventos de segurança com o script `test_events.sh`:

```bash
chmod +x test_events.sh
./test_events.sh
```

O script gera eventos como:

* Tentativas de login falhas
* Modificações em arquivos sensíveis (`/etc/shadow`)

### 🔍 Alertas esperados

No painel do Wazuh, você verá alertas como:

```
Rule: 5710 - Multiple failed logins
Rule: 550 - System file modified
```

---

## 📊 Resultados

* Os eventos simulados foram detectados e correlacionados pelo Wazuh.
* As falhas de autenticação e alterações de arquivos sensíveis geraram alertas com diferentes níveis de criticidade.

---

## 🧩 Relatório de Incidente

Um exemplo de relatório de incidente está disponível em [`incident_report.md`](https://chatgpt.com/c/incident_report.md), mostrando:

* Data e hora do evento
* Regras acionadas
* Arquivos ou usuários afetados
* Nível do alerta
* Ações recomendadas

---

## 📁 Estrutura do Projeto

```
SIEM-OpenSource-Wazuh/
 ┣ README.md
 ┣ setup.sh
 ┣ test_events.sh
 ┣ incident_report.md
 ┗ LICENSE
```

---

## 🧠 Conhecimentos Demonstrados

* Instalação e configuração do **Wazuh** (SIEM Open Source)
* Automação de instalação via script `setup.sh`
* Monitoramento de logs do sistema Linux
* Detecção de falhas de autenticação e alterações suspeitas
* Interpretação de alertas de segurança
* Documentação de incidentes para portfólio

---

## ✍️ Autor

**Matheus da Rocha**

💻 Linux + Wazuh SIEM | 🧠 Monitoramento e Resposta a Incidentes
