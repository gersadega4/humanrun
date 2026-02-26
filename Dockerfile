FROM python:3.11-slim

# Gunakan path absolut untuk keamanan
WORKDIR /app

# Copy file secara spesifik
COPY main.py /app/main.py

# DEBUG: Tampilkan isi folder /app saat build. 
# Cek log GitHub Actions kamu, harus muncul "main.py" di sini.
RUN ls -la /app

# Jalankan dengan path absolut
CMD ["python", "/app/main.py"]
