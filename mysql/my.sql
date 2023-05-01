CREATE USER 'bigred'@'%' IDENTIFIED BY 'bigred';
ALTER USER 'bigred' IDENTIFIED WITH mysql_native_password BY 'bigred';
GRANT ALL PRIVILEGES ON *.* TO 'bigred'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
