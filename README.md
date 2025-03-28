# Docker + Nginx Proxy

Цей проєкт показує, як налаштувати простий проксі через Nginx до backend-сервісу на Node.js.

## Структура проєкту

```
project/
├── docker-compose.yml
├── nginx/
│   └── nginx.conf
└── backend/
    ├── Dockerfile
    └── app.js
```

## Як запустити

1. Встанови Docker та Docker Compose, якщо ще не встановлено.
2. В кореневій директорії проєкту виконай команду:

```bash
docker-compose up --build
```

3. Відкрий у браузері:

```
http://localhost:8080
```

Ти побачиш повідомлення: `Hello from Backend!`

## Порти

- Nginx слухає на порту **8080**
- Backend Node.js сервер працює на порту **4000**

## Проксі

Nginx проксірує всі запити на `/` до backend-сервісу.
