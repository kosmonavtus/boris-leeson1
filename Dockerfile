FROM python:3.10
WORKDIR /app
COPY ./app.py ./ 
COPY ./requrements.txt  ./
RUN pip install -r ./requrements.txt
EXPOSE 8080
CMD ["uvicorn", "app:app",  "--reload", "--host", 0.0.0.0]
