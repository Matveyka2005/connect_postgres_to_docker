FROM python:3.10

WORKDIR /app

RUN pip install --upgrade pip 

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./market ./market

CMD ["python3.10", "./market/manage.py", "runserver", "0.0.0.0:8000"]
