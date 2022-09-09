FROM postgres:14.3
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_USER lana
ENV POSTGRES_DB saladDB
COPY init.sql /docker-entrypoint-initdb.d/

