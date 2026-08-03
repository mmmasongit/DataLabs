FROM mysql:latest

COPY .docker/bootstrap_mysql.sh /docker-entrypoint-initdb.d/bootstrap.sh
RUN chmod +x /docker-entrypoint-initdb.d/bootstrap.sh