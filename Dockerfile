FROM python:3

ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE config.settings.development


RUN mkdir -p /opt/services2/djangoapp2/src2
WORKDIR /opt/services2/djangoapp2/src2


COPY . /opt/services2/djangoapp2/src2
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn", "--chdir", "dindefterim", "--bind", ":8080", "config.wsgi:application", "--reload"]
