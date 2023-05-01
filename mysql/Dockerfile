FROM mysql/mysql-server
ENV MYSQL_ROOT_PASSWORD bigred
RUN microdnf update && microdnf install sudo curl wget zip tree iputils hostname findutils procps less nano net-tools && \
microdnf clean all
ADD my.sql initdb.sql /docker-entrypoint-initdb.d
EXPOSE 3306
