

# FROM arm64v8/ubuntu
FROM arm32v7/ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
    motion \
    && rm -rf /var/lib/apt/lists/*

VOLUME "/etc/motion"

CMD [ "motion", "-n" ]

