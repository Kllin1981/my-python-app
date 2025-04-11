# 使用Docker 建立與執行容器
```bash
# 建立映像檔（你可以改成自己的名稱）
docker build -t my-python-app .

# 執行容器並對外開放 5000 port
docker run -p 5000:5000 my-python-app
```
打開瀏覽器，進入 http://localhost:5000
```
Hello, Docker!
```

# 使用Terraform
```bash
# 初始化 Terraform 專案
terraform init

# 實際建立容器
terraform apply

# 刪除
terraform destroy
```
