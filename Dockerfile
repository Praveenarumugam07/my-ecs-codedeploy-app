FROM python:3.9
FROM public.ecr.aws/docker/library/python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]
