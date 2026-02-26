# Menggunakan image Python versi slim agar proses upload/pull cepat
FROM python:3.11-slim

# Menentukan folder kerja di dalam container
WORKDIR /app

# Menyalin file main.py dari komputer Anda ke folder /app di container
COPY main.py .

# Menjalankan script saat container dimulai
CMD ["python", "main.py"]
