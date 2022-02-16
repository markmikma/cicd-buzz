FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY appy.py /src
COPY buzz /src/buzz
CMD python /src/appy.py
