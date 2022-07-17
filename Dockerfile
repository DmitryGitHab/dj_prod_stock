FROM python:3.10.4

COPY . /src
COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

EXPOSE 6060

WORKDIR src

CMD ["python3", "-u", "main.py", "--host", "0.0.0.0", "--port", "6060"]