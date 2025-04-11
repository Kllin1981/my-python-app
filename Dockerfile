# 使用官方 Python 基礎映像檔
FROM python:3.10-slim

# 設定工作目錄
WORKDIR /app

# 複製專案檔案進容器
COPY . .

# 安裝 Python 套件
RUN pip install --no-cache-dir -r requirements.txt

# 容器啟動時執行的指令
CMD ["python", "app.py"]
