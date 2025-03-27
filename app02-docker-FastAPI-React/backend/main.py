from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI(title="FastAPI React App")

# Configuração CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class TodoItem(BaseModel):
    id: int | None = None
    title: str
    completed: bool = False

# Armazenamento em memória
todos = []
current_id = 1

@app.get("/")
async def root():
    return {"message": "Bem-vindo à API FastAPI!"}

@app.get("/todos")
async def get_todos():
    return todos

@app.post("/todos")
async def create_todo(todo: TodoItem):
    global current_id
    todo.id = current_id
    current_id += 1
    todos.append(todo)
    return todo

@app.put("/todos/{todo_id}")
async def update_todo(todo_id: int, todo: TodoItem):
    for t in todos:
        if t.id == todo_id:
            t.title = todo.title
            t.completed = todo.completed
            return t
    return {"error": "Todo não encontrado"}

@app.delete("/todos/{todo_id}")
async def delete_todo(todo_id: int):
    for i, t in enumerate(todos):
        if t.id == todo_id:
            return todos.pop(i)
    return {"error": "Todo não encontrado"} 