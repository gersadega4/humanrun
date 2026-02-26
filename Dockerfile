# Menggunakan versi Python slim untuk meminimalkan ukuran image (Cold Start lebih cepat)
FROM python:3.11-slim

# 1. Optimasi Environment Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \

# 2. Instalasi dependencies sistem (jika diperlukan untuk komputasi berat)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

CMD ["python", "main.py"]
