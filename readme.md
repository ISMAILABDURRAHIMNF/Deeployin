# Dockerfile Generator

Hi, thanks for visiting my repo, this project is Deeployin main repo, this project developing Dockerfile generator and automation deploy using docker, but this project will always be developed to bring more features.

## 🔧 How to use

Clone this repo to ur computer

```bash
  git clone https://github.com/ISMAILABDURRAHIMNF/Deeployin.git
```

Edit the environment variable in docker-compose.yml, specially in backend1 and backend2 sections.

```bash
  - OPENAI_API_KEY=
  - SECRET_KEY=
  - DEPLOY_PATH=
```

Run the docker compose service

```bash
  docker-compose up -d
```

## ❗Warning !

Make sure u already have an OpenAI API key and save it in the `docker-compose.yml` file.
