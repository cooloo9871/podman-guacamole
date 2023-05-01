# quay-guacamole



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
