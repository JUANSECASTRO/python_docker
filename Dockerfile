FROM python:3-alpine
WORKDIR /service
EXPOSE 8010
ENTRYPOINT ["python3", "holaholamundo.py"]


