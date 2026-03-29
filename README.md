### Hexlet tests and linter status:
[![Actions Status](https://github.com/cruelwxrld/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/cruelwxrld/devops-for-developers-project-76/actions)

# Подготовка серверов для деплоя приложения

## Описание
Ansible-плейбук для автоматической подготовки инфраструктуры:
- Установка Docker
- Установка pip и Python-модуля docker
- Настройка пользователей и групп

## Требования
- Ansible 2.9 или выше
- Python 3 на целевых серверах
- SSH-доступ к серверам (ключи настроены)
- **Важно:** В связи с географическими ограничениями, для установки зависимостей может потребоваться **VPN или прокси**. Без этого Ansible может не иметь доступа к репозиториям GitHub и Ansible Galaxy.

## Подготовка

### 1. Настройка инвентаризации
Отредактируйте файл `inventory.ini`, указав реальные IP-адреса ваших серверов:

```ini
[webservers]
app-1 ansible_host=51.250.10.100 ansible_user=ubuntu
app-2 ansible_host=51.250.10.101 ansible_user=ubuntu

[webservers:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_become=yes
