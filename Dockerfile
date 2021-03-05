FROM python:3.7
LABEL maintainer="alan.p.bandeira@gmail.com"
WORKDIR /shipping_service
ADD . /shipping_service
RUN pip install poetry
RUN poetry config --list
RUN poetry install
EXPOSE 5000:5000
ENTRYPOINT ["python"]
CMD ["src/run.py"]