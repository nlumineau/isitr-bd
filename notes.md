# Getting the data

```sh
git clone https://github.com/nlumineau/ens-bd.git
rm -rf ens-bd/.git
```


# Testing locally

```
docker run --rm -it --name postgres \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=postgres \
    -e PGDATA=/data \
    -v $(pwd)/data/cinema:/db-data.sql \
    -v $(pwd)/init-db.sh:/docker-entrypoint-initdb.d/init-db.sh \
    postgres:17.5

```



# Building the GGMD INSEE image

```
docker build --no-cache -t bdens .

```

# Send image to Docker Hub

```
docker tag bdens nlumineau/ens-bd

docker push nlumineau/ens-bd
```


# Trying the image

```
docker exec -it postgres  psql -d cinema -U etu

docker stop postgres && docker rm postgres

```