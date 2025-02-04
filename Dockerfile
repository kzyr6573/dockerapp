FROM python:3.10
RUN pip install Flask==2.0.3 redis==2.10.5
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "app.py"] 
