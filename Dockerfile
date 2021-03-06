FROM python:3.8-slim

LABEL "com.github.actions.name"="Notion2Github"
LABEL "com.github.actions.description"="Automatic syncronization from Notion to Github"
LABEL "repository"="https://github.com/younho9/notion2github"
LABEL "maintainer"="Younho Choo <younho9.choo@gmail.com>"

WORKDIR /usr/src/app

COPY requirements.txt main.py $GITHUB_WORKSPACE/narkdown.config.json* ./

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/usr/src/app/main.py"]
