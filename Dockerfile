FROM alpine

# Set timezone to Melbourne so log times are accurate.
RUN apk add --no-cache tzdata
ENV TZ=Australia/Melbourne

RUN apk add --no-cache --upgrade bash

WORKDIR /app
COPY ping.sh /app

RUN chmod 0744 ping.sh

CMD ["./ping.sh"]