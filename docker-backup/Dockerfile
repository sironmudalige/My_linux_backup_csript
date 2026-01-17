FROM ubuntu:22.04

RUN apt-get update && apt-get install -y tar

WORKDIR /app

COPY backup.sh .

RUN chmod +x backup.sh

CMD ["./backup.sh"]


