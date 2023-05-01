# podman-guacamole

$ git clone https://github.com/cooloo9871/podman-guacamole.git

$ sudo podman run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ~/podman-guacamole/mysql/initdb.sql

$ nano ~/podman-guacamole/mysql/initdb.sql
```
......
--
-- Table of connection groups. Each connection group has a name.
--
CREATE DATABASE guacamole;
USE guacamole;
......
```

$ sudo podman build -t gcmysql ~/podman-guacamole/mysql/

$ mkdir ~/gcdata

$ sudo podman build -t gcm ~/podman-guacamole/gcm/

$ sudo podman play kube ~/podman-guacamole/mygcm.yaml
