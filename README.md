# SimpleTimeService

A minimalist microservice that returns the current UTC timestamp and the client’s IP address.

## 🔧 Technologies
- Python 3.12
- Flask
- Docker

## 📦 Build the Docker Image
```bash
docker build -t simpletimeservice .
docker run -p 8080:8080 simpletimeservice
