# https://cadu.dev/creating-a-docker-image-with-database-preloaded/

FROM postgres:17.5 as dumper

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV PGDATA=/data

COPY init-db.sh        /docker-entrypoint-initdb.d/
COPY /data/cinema/db-data.sql      /db-data.sql

RUN ["sed", "-i", "s/exec \"$@\"/echo \"skipping...\"/", "/usr/local/bin/docker-entrypoint.sh"]

RUN ["/usr/local/bin/docker-entrypoint.sh", "postgres"]


# final build stage
FROM postgres:17.5

COPY --from=dumper /data $PGDATA