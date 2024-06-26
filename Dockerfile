# Base Image
FROM python:3.8

# Working directory
WORKDIR /app

#copy file
COPY requirements.txt .

#install dependencies
RUN pip install -r requirements.txt

#Copy application code
COPY . .

#Expose port
EXPOSE 5000

#run the flask application
CMD ["python", "app.py"]

#End of Dockerfile
#Testing Build Trigger

