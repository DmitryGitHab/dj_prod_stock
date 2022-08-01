FROM python:3.10.4

COPY . /app/

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "manage.py" ]

CMD ["runserver", "0.0.0.0:8000"]


# FROM python:3.10.4

# COPY . /src
# COPY ./requirements.txt /src/requirements.txt
# RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

# EXPOSE 6060

# WORKDIR src

# CMD ["python3", "-u", "manage.py", "--host", "0.0.0.0", "--port", "6060"]

# FROM python:3.10.4

# ENV PYTHONUNBUFFERED 1

# WORKDIR /app


# COPY . /app
# # ADD ./app

# RUN pip install -r requirements.txt
