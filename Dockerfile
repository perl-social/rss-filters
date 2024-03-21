FROM perl:5.38

RUN apt update && apt full-upgrade -y

RUN mkdir /app
COPY ./app/cpanfile /app
WORKDIR /app

RUN cpanm --verbose --installdeps /app
COPY ./app /app

CMD ["hypnotoad", "-f", "bin/app.pl"]
