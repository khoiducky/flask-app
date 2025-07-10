# Sử dụng Python image nhẹ
FROM python:3.9-slim

# Tạo thư mục và đặt làm thư mục làm việc
WORKDIR /app

# Copy file yêu cầu và cài đặt thư viện
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy toàn bộ mã nguồn vào container
COPY . .

# Lệnh chạy Flask
CMD ["python", "app.py"]
