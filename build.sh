#!/bin/bash

echo "Debugging here ===============>>>>>>>>>>>>>>>>"

echo "Creating a virtual environment..."
echo python --version
python --version 
echo pip --version 
pip --version 
echo python3 --version 
python3 --version 

# Create a virtual environment
echo "Creating a virtual environment..."
python3.9 -m venv venv
source venv/bin/activate

# Install the latest version of pip
echo "Installing the latest version of pip..."
python -m pip install --upgrade pip

# Build the project
echo "Building the project..."
python -m pip install -r requirements.txt

# Make migrations
echo "Making migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear