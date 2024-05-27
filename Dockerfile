FROM ubuntu:latest

RUN apt-get update && apt-get install -yy gcc g++ cmake

COPY . /solver
WORKDIR /solver/solver_application
RUN rm -rf _build

RUN cmake -B _build && cmake --build _build

VOLUME /home/logs

ENTRYPOINT ["sh", "-c", "echo '1\n2\n3\n' | ./_build/main >> /home/logs/log.txt"]
