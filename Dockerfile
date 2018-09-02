#Download Python3 files
FROM python:3
#Adding the Python service
ADD counter-service.py
# Installing flask
RUN pip install flask
#Run CMD command
CMD ["python", "./counter-service.py"]
