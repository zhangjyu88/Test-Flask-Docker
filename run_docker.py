# Build image
docker build --tag=flasktest .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:5001 flasktest