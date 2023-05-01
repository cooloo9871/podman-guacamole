# quay-guacamole

$ git clone https://github.com/cooloo9871/quay-guacamole.git

$ sudo podman run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ~/quay-guacamole/mysql/initdb.sql

$ nano ~/quay-guacamole/mysql/initdb.sql
```
......
--
-- Table of connection groups. Each connection group has a name.
--
CREATE DATABASE guacamole;
USE guacamole;
......
```

$ sudo podman build -t gcmysql ~/quay-guacamole/mysql/

$ mkdir ~/gcdata

$ sudo podman build -t gcm ~/quay-guacamole/gcm/

$ sudo podman play kube ~/quay-guacamole/mygcm.yaml
