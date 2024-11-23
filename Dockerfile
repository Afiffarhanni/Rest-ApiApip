FROM python:3.11-slim

WORKDIR /app

COPY Pipfile /app/
COPY Pipfile.lock /app/  # Optional, if you have a lock file

RUN pip install pipenv
RUN pipenv install --deploy --ignore-pipfile  # '--ignore-pipfile' ensures that Pipfile.lock is used

COPY . /app/

EXPOSE 4000
ENV PORT 4000

CMD ["pipenv", "run", "python", "app.py"] 
