from fastapi import FastAPI

from examples.music.songs import list

app = FastAPI()


@app.get("/")
def fn():
    return list()
