<h3 align="center">NGINX + FLASK + GUNICORN + LETSENCRYPT + DOCKER Boilerplate</h3>
<p align="center"> Nginx + Gunicorn + Flask + LetsEncrypt + docker-compose.</p>

---


**Орчин: Ubuntu 16.04, 18.04, 20.04**

## Docker

service | image
--- | ---
flask & gunicorn | `python:3.8-alpine`
nginx | `nginx:1.19-alpine`

## Шаардлага

Сангууд | Комманд
--- | ---
docker | [commands for Debian / Ubuntu](https://gist.github.com/anhbaysgalan1/1b3a6a76bda0228011b78263d71314f5)
docker-compose | [commands for Debian / Ubuntu](https://gist.github.com/anhbaysgalan1/28fea3e704205bc76b726cb4c4a134cd)
make | `sudo apt install make`
Домайн | DNS A record дээр static ip зоож өгнө
ports | 80 (http) , 443 (https)

## Бэлтгэл

#### 1) Repo гоо clone хийнэ

```sh
sudo git clone git@gitlab.com:numur/dan_python.git

```

docker, docker-compose болон make суулгана (Суулгах заавар хавсаргав
[хавсралт](#requirements)).  

#### 2) Docker command user ээс ажиллуулдаг болгох `docker` group  

```sh
sudo usermod -aG docker $USER
```

#### 3) Сервисийн ажиллах домайныг .env дотор бичиж өгнө 

 `.env.example` файлын  `.env` болгож хадгална
```sh
# .env

# SSL үүсгэх и-мейл.
EMAIL=email@email.com

# Сервисийн sub домейн
DOMAIN=mydomain.com

# Flask сервисийн зам
APP_FOLDER=src

FLASK_ENV=development

FLASK_APP=example_app
```

## Сервисээ ажиллуулах

**Ажиллуулах**
```sh
sudo make dan-start
```
<p style="text-align: center;">
 🎉 Одоо манай сервис HTTPS протоколоор ажиллана 🎉   
</p>

**БҮХ КОММАНДУУД**

```console
% make help
Usage: make [TARGET ...]

dan-stop         docker ийг зогосооно (sudo ашиглах)
dan-start        docker ийг ажиллуулах (sudo ашиглах)
dan-start-local  localд docker ийг ажиллуулах (nginx байхгүй)
```

7 хоног бүр SSL сертификатыг шалгаж автоматаар шинэчлэнэ.  

