# Base python image (includes tools).
FROM python:2.7

# Make sure apt is up to date.
RUN apt-get update
RUN apt-get -y upgrade

# Add sources.
ADD . /home/app

# Install everything.
WORKDIR /home/app

# Install Python modules.
RUN pip install -r requirements.txt

# Run flower.
WORKDIR /home/app
CMD ["celery", "flower"]
