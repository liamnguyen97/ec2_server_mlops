FROM python:3.9-slim 

# Update package lists
RUN apt-get update

# Install Bash shell in /bin directory
RUN apt-get install -y bash

WORKDIR /mlflow/
RUN pip install --no-cache-dir mlflow==2.3.2