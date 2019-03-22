FROM python:3.6-alpine

COPY requirements.txt app/requirements.txt
RUN pip install -r app/requirements.txt

COPY web/app.py app/

ENTRYPOINT ["python"]
CMD ["app/app.py"]