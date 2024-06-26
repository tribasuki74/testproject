# docker build -t backend_pendamping:latest .

FROM python:latest

WORKDIR /app

COPY . .

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install --no-cache-dir -r requirements.txt 

CMD ["fastapi", "run", "main.py", "--port", "8000"]