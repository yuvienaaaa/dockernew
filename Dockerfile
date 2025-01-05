# Menggunakan image Python versi terbaru sebagai base image
FROM python:3.11-slim

# Mengatur working directory di dalam container
WORKDIR /app

# Menyalin file requirements.txt dan aplikasi Flask ke dalam container
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Menyalin semua file aplikasi ke dalam container
COPY . /app/

# Menentukan port yang digunakan oleh aplikasi
EXPOSE 8000

# Menjalankan aplikasi Flask pada container
CMD ["python", "app.py"]
