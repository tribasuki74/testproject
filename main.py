from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}\
    
@app.get("/hello")
async def hello():
    return "hello world for Python Programmer!"