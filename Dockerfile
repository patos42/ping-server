FROM alpine

# Set timezone to Melbourne as other files depend on it.
RUN apk add --no-cache tzdata
ENV TZ=Australia/Melbourne

RUN apk add --no-cache --upgrade bash

WORKDIR /app
COPY ping.sh /app

RUN chmod 0744 ping.sh

CMD ["./ping.sh"]
#CMD ["cron", "-f"]
#CMD ["python", "./download_economist.py"]

# Keeps container running for debug using docker exec -it <mycontainer> bash; docker ps
#ENTRYPOINT ["tail", "-f", "/dev/null"]