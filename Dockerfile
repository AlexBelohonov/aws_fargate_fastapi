FROM python:3.11-alpine
WORKDIR /app

COPY ./app /app
COPY ./Pipfile /app/Pipfile
COPY ./Pipfile.lock /app/Pipfile.lock

RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
