FROM swift:4.1

ADD ./ /vapor
WORKDIR /vapor
RUN apt update -yqq && apt install -yqq cmysql libmysqlclient-dev
RUN swift build -c release

CMD .build/release/vapor-tfb-mysql -e production -b 0.0.0.0:8080