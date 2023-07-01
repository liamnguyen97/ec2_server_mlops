FROM python:3.9-slim

RUN apt-get update

#These two instructions install a new Python virtual environment and set the environment variable PATH to include the bin directory of the virtual environment, 
#allowing you to run Python and any Python dependencies that are installed in the virtual environment in the Docker container.

# creates a new virtual environment at the /opt/venv directory using the venv module that comes with Python
RUN python -m venv /opt/venv
# the python command in the Dockerfile and any scripts that you run in the container will use the Python interpreter installed in the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# duong dan tinh tu cho minh chay file deploy.sh
COPY ./model_predictor/requirements.txt .
RUN pip install --upgrade wheel setuptools pip
RUN pip install -r requirements.txt

# COPY /ec2_server/model_predictor/src /mlops_project/src
WORKDIR /mlops_project/