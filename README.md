# podman-guacamole
```
git clone https://github.com/cooloo9871/podman-guacamole.git
```
```
sudo podman run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ~/podman-guacamole/mysql/initdb.sql
```
```
nano ~/podman-guacamole/mysql/initdb.sql
```
Add the following content
```
......
--
-- Table of connection groups. Each connection group has a name.
--
CREATE DATABASE guacamole;
USE guacamole;
......
```
```
sudo podman build -t gcmysql ~/podman-guacamole/mysql/
```
```
mkdir ~/gcdata
```
```
sudo podman build -t gcm ~/podman-guacamole/gcm/
```
須注意 hostpath 位置
```
cat ~/podman-guacamole/mygcm.yaml | envsubst | sudo podman play kube -
```

## 登入網址
http://localhost:8080/guacamole/

## 管理者帳號
Username: guacadmin

Password: guacadmin
