FROM postgres:16

RUN apt-get update && apt-get install -y --no-install-recommends \
  curl \
  ca-certificates \
  python3 \
  python3-pip \
  python3-venv \
  && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

COPY AnalyzingStudentsMentalHealth/.docker /docker-entrypoint-initdb.d/AnalyzingStudentsMentalHealth/
COPY IntermediateSQL/.docker /docker-entrypoint-initdb.d/IntermediateSQL/
COPY IntroductionToSQL/.docker /docker-entrypoint-initdb.d/IntroductionToSQL/
COPY JoinDataInSQL/.docker /docker-entrypoint-initdb.d/JoinDataInSQL/
COPY TheCompleteSQLBootcampGoFromZeroToHero/.docker /docker-entrypoint-initdb.d/TheCompleteSQLBootcampGoFromZeroToHero/

COPY pyproject.toml /docker-entrypoint-initdb.d/pyproject.toml
COPY .docker /docker-entrypoint-initdb.d/

#RUN /root/.local/bin/uv sync --refresh
#RUN sh /docker-entrypoint-initdb.d/.venv/bin/activate
RUN chmod +x /docker-entrypoint-initdb.d/bootstrap.sh