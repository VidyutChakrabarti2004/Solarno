FROM python:3.12.5

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8080

COPY . /app

CMD streamlit run --server.port 8080 --server.enableCORS false solarno.py