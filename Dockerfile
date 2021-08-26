FROM python:3.9-alpine
COPY requirements.txt /zips/requirements.txt
RUN pip3 install --no-cache-dir -r /zips/requirements.txt
COPY zips.json /zips
COPY templates /zips/templates
COPY entry.py /zips
COPY entrypoint.sh /zips
ENTRYPOINT ["/zips/entrypoint.sh"]
