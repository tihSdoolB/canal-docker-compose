# Canal Docker Compose 模板
## 测试环境版本
```
Host: Windows 10 21H2
Docker: Docker Desktop 24.0.5
Docker Compose: Docker Compose v2.20.2-desktop.1
Canal Admin Image Digest: 5d03a466887783ccddd97e08597d890ea165c37f0055e51bf40ac83fbab63db2
Canal Server Image Digest:
0d1018759efd92ad331c7cc379afa766c8d943ef48ef8d208ade646f54bf1565
MySQL: 8.0.27
```

### Docker Desktop无法启动
<https://github.com/alibaba/canal/issues/4820#issuecomment-1684783673>
### 修改面板密码
```properties
# env/canal-server.env
## 此处取密文 https://github.com/alibaba/canal/wiki/Canal-Admin-ServerGuide
canal.admin.passwd = 6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9

# env/canal-admin.env
## 此处取明文
canal.adminPasswd=123456
```
### canal-admin更新至最新版本
#### 拉取canal代码
```shell
git clone https://github.com/alibaba/canal.git
```
#### 替换建表脚本名
```shell
cp canal/docker/image/canal_manager.sql scripts/
```