# 🦞 OpenClaw-python Docker Setup

This project provides a simple Dockerized setup for running OpenClaw locally with a web dashboard using python as the base image.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Binto-Xavier/openclaw-python.git
cd openclaw-python
```

---

### 2. Build and run

```bash
docker compose up --build
```

---

### 3. First-time setup

```bash
docker exec -it openclaw node openclaw.mjs setup
```

* Select: `gateway mode = local`
* Press Enter for other options

---

### 4. Restart container

```bash
docker compose restart
```

---

## 🌐 Access Dashboard

Open in browser:

```
http://localhost:18789
```

---

## 🔑 Get Auth Token (if needed)

```bash
docker exec -it openclaw cat /root/.openclaw/openclaw.json
```

---

## 📦 Ports Used

* **19001** → Gateway
* **18789** → Dashboard UI

---

## 🛠 Useful Commands

Stop container:

```bash
docker compose down
```

View logs:

```bash
docker logs openclaw
```

---

## ✅ Status

✔ OpenClaw running in Docker
✔ python as base image
✔ Dashboard accessible
✔ Persistent setup

---

## 📚 Reference

* https://github.com/openclaw/openclaw
