#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing project dependencies using --break-system-packages..."
python3 -m pip install -r requirements.txt --break-system-packages

echo "Collecting static files..."
python3 manage.py collectstatic --noinput --clear

echo "Build finished successfully!"
