# Sử dụng Python image chính thức
FROM python:3.11-slim

# Thư mục làm việc trong container
WORKDIR /app

# Copy requirements trước
COPY requirements.txt .

# Cài dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy toàn bộ source code
COPY . .

# Expose port Flask
EXPOSE 5000

# Lệnh chạy ứng dụng
CMD ["python", "app.py"]
