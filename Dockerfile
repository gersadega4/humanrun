# Menggunakan versi Python slim untuk meminimalkan ukuran image (Cold Start lebih cepat)
FROM python:3.11-slim

# 1. Optimasi Environment Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONPATH=/app

# 2. Instalasi dependencies sistem (jika diperlukan untuk komputasi berat)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 3. Manajemen Dependencies
# Gunakan cache mount untuk mempercepat build jika dijalankan berkali-kali
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Menyalin kode aplikasi
COPY . .

# 5. Entrypoint
# Cloud Run Jobs akan mengeksekusi script ini
# Script Anda harus bisa membaca os.environ.get("CLOUD_RUN_TASK_INDEX") 
# untuk membagi tugas secara otomatis
CMD ["python", "main.py"]
