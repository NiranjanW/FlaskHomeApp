FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flaskhomeapp create-db
RUN flaskhomeapp populate-db
RUN flaskhomeapp add-user -u admin -p admin
EXPOSE 5000
CMD ["flaskhomeapp", "run"]
