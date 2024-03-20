
FROM python:3-alpine

WORKDIR /app

COPY generated_file.html /app/

CMD ["python", "-m", "http.server", "8010"]