### Hexlet tests and linter status:
[![Actions Status](https://github.com/cruelwxrld/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/cruelwxrld/devops-for-developers-project-76/actions)

## 🌐 Задеплоенное приложение

Приложение доступно по адресу: **[https://hexlet.us.ci](https://hexlet.us.ci)**

> ⚠️ **Примечание:** Для корректной работы приложения может потребоваться VPN или прокси при установке зависимостей (Ansible Galaxy, GitHub).

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
