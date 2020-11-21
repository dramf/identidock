FROM python:3.9

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install --upgrade pip && pip install Flask==0.10.1 uWSGI==2.0.19 requests==2.25.0 redis==3.5.3

WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191

USER uwsgi

CMD ["/cmd.sh"]