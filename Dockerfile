FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt
COPY templates /app/templates
COPY entry.py /app
COPY entrypoint.sh /app
ENTRYPOINT ["/app/entrypoint.sh"]
