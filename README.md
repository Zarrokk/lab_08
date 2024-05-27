## Homework

### Dockerfile
```
FROM ubuntu:latest

RUN apt-get update && apt-get install -yy gcc g++ cmake

COPY . /solver
WORKDIR /solver/solver_application
RUN rm -rf _build

RUN cmake -B _build && cmake --build _build

VOLUME /home/logs

ENTRYPOINT ["sh", "-c", "echo '1\n2\n3\n' | ./_build/main >> /home/logs/log.txt"]


```
### action.yml
```
name: action
run-name: running docker container
on: [push]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: checkout
        uses: actions/checkout@v4
      - name: Build and run in Docker container
        run: docker build -t solver ${{github.workspace}}
      - name: Run tests
        run: docker run -v ${{github.workspace}}/logs:/home/logs solver
      - name: Check container
        run: cat ${{github.workspace}}/logs/log.txt

```
