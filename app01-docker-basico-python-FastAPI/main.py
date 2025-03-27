from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="Docker FastAPI App")

class Item(BaseModel):
    name: str
    description: str | None = None

@app.get("/")
async def root():
    return {"message": "Bem-vindo à API Docker!"}

@app.get("/items/{item_id}")
async def read_item(item_id: int):
    return {"item_id": item_id, "name": "Item de exemplo"}

@app.post("/items/")
async def create_item(item: Item):
    return item 