FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir fastmcp httpx pydantic uvicorn

COPY servers/ ./servers/

EXPOSE 8001
EXPOSE 8002

CMD ["python", "-m", "servers.remote_currency"]
