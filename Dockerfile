FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . web.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
## Complete Step 4:
# Expose port 80
EXPOSE 80

## Complete Step 5:
# Run app.py at container launch
CMD ["env FLASK_APP=web.py flask run"]