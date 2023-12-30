FROM python:3.9

WORKDIR /app

COPY requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt

COPY app.py .

CMD ["streamlit", "run", "app.py"]
