FROM mysql:latest

COPY SQLForDataAnalysisAdvanceSQLQueryingTechniques/.docker /docker-entrypoint-initdb.d/SQLForDataAnalysisAdvanceSQLQueryingTechniques/

COPY .docker/bootstrap_mysql.sh /docker-entrypoint-initdb.d/bootstrap.sh
RUN chmod +x /docker-entrypoint-initdb.d/bootstrap.sh