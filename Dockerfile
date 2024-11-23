FROM python:3.11

WORKDIR /app

RUN pip install pipenv
RUN pip install numpy
RUN pip install pillow
RUN pip install flask
RUN pip install tensorflow

COPY . /app/

EXPOSE 4000

CMD ["python", "app.py"]
