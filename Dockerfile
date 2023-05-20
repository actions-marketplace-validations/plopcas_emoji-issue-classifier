FROM python:3.9-slim

WORKDIR /app

COPY classifier/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY classifier .

CMD ["python", "main.py"]
