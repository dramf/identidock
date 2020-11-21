# identidock sample
## Build and run
```
docker build -t identidock .
docker run -d -p 5000:5000 identidock
curl localhost:5000
```
Stop and remove a running container
```
docker stop $(docker ps -lq)
docker rm $(docker ps -lq)
```
### Run with code from volume
```
docker run -d -p 5000:5000 -v "$(pwd)"/app:/app identidock
```
## uWSGI
The uWSGI project aims at developing a full stack for building hosting services.
[https://uwsgi-docs.readthedocs.io/en/latest/]

### Run with uWSGI:
```
docker run -d -p 9090:9090 -p 9191:9191 identidock
curl localhost:9090
```
## Run with `cmd.sh`
```
chmod +x cmd.sh
docker build -t identidock .
docker run -e "ENV=DEV" -p 5000:5000 identidock
```
## Docker Compose Run
```
docker-compose up
```
## Tests
Run tests:
```
docker build -t identidock .
docker run identidock python tests.py
docker run -e ENV=UNIT identidock
```