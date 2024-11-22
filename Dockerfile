FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies specified in requirements.txt
# TODO: use --no-cache-dir arg or no?
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

CMD ["/bin/bash"]