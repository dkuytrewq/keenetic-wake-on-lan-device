# Автоматическое пробуждение устройства с помощью Wake-on-LAN

Этот проект позволяет автоматизировать процесс пробуждения устройства через Wake-on-LAN с использованием роутера Keenetic и репозитория Entware.

## Описание

Скрипт запускается один раз в определенный промежуток времени и пингует устройство, если оно недоступно, то посылает сигнал Wake-on-LAN через роутер Keenetic.

## Кейс использования

Вы используете ноутбук в качестве сервера и в вашем доме часто выключается свет из-за чего ноутбук может уйти в сон.

## Установка и использование

1. **Предварительные требования:**
   - Установленный Entware на вашем роутере Keenetic.
   - Устройство, которое вы хотите будить, поддерживает Wake-on-LAN.
   - Установленные пакеты `cron` и `wget-nossl`.
  ```bash
  opkg install cron
  ```
  ```bash
  opkg install wget-nossl
  ```

2. **Установка:**
   - Скачайте или создайте скрипт `wol-device.sh` и поместите в папку `cron.hourly` по пути `/opt/etc/cron.hourly`.

3. **Конфигурация скрипта:**
   - Замените IP-адрес `192.168.1.1` и MAC-адрес `1a:2b:3c:11:22:33` на IP-адрес и MAC-адрес вашего устройства в соответствии с вашей локальной сетью.
