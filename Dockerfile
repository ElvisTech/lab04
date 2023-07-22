FROM python:3

RUN apt-get update \
        && apt-get install -y --no-install-recommends

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip3 install --upgrade pip; \
    pip3 install -r requirements.txt
COPY . .
RUN chmod +x wait
RUN chmod +x start.sh
EXPOSE 8000
 
CMD ./start.sh
