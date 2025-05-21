FROM python:3.11-slim
ENV ENV=Development
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --default-timeout=150 -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]  
