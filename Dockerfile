FROM python:3.10
WORKDIR /app
COPY ./app.py ./ 
COPY ./requrements.txt  ./
RUN pip install -r ./requrements.txt
CMD ["uvicorn", "app:app",  "--reload"]
