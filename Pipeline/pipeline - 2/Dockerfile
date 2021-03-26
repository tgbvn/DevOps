FROM python:3.7-alpine
RUN pip install Flask
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
COPY app.py .
CMD ["flask", "run"]