FROM python

RUN python -m pip  install fastapi uvicorn

RUN mkdir /app
WORKDIR /app

COPY . .


CMD ["uvicorn", "a:app", "--workers=20", "--host=0.0.0.0", "--port=3000"]
