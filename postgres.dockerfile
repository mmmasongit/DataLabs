FROM postgres:latest

COPY IntermediateSQL/.docker /docker-entrypoint-initdb.d/IntermediateSQL/
COPY IntroductionToSQL/.docker /docker-entrypoint-initdb.d/IntroductionToSQL/
COPY JoinDataInSQL/.docker /docker-entrypoint-initdb.d/JoinDataInSQL/
COPY TheCompleteSQLBootcampGoFromZeroToHero/.docker /docker-entrypoint-initdb.d/TheCompleteSQLBootcampGoFromZeroToHero/

COPY .docker/bootstrap_postgres.sh /docker-entrypoint-initdb.d/bootstrap.sh
RUN chmod +x /docker-entrypoint-initdb.d/bootstrap.sh