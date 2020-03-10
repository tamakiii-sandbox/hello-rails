FROM ruby:2.6.5

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && \
    apt-get install -y --no-install-recommends make sqlite3 nodejs npm yarn && \
    apt-get clean

COPY install /tmp/install
RUN make -C /tmp/install install && \
    rm -rf /tmp/install

COPY docker-entrypoint.sh /usr/sbin
ENTRYPOINT [ "docker-entrypoint.sh" ]
