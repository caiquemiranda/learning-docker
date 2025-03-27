import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [todos, setTodos] = useState([]);
  const [newTodo, setNewTodo] = useState('');

  useEffect(() => {
    fetchTodos();
  }, []);

  const fetchTodos = async () => {
    try {
      const response = await axios.get('http://localhost:8000/todos');
      setTodos(response.data);
    } catch (error) {
      console.error('Erro ao buscar todos:', error);
    }
  };

  const addTodo = async (e) => {
    e.preventDefault();
    if (!newTodo.trim()) return;

    try {
      const response = await axios.post('http://localhost:8000/todos', {
        title: newTodo,
        completed: false
      });
      setTodos([...todos, response.data]);
      setNewTodo('');
    } catch (error) {
      console.error('Erro ao adicionar todo:', error);
    }
  };

  const toggleTodo = async (todo) => {
    try {
      await axios.put(`http://localhost:8000/todos/${todo.id}`, {
        ...todo,
        completed: !todo.completed
      });
      setTodos(todos.map(t => 
        t.id === todo.id ? { ...t, completed: !t.completed } : t
      ));
    } catch (error) {
      console.error('Erro ao atualizar todo:', error);
    }
  };

  const deleteTodo = async (todoId) => {
    try {
      await axios.delete(`http://localhost:8000/todos/${todoId}`);
      setTodos(todos.filter(t => t.id !== todoId));
    } catch (error) {
      console.error('Erro ao deletar todo:', error);
    }
  };

  return (
    <div className="App">
      <h1>Todo App com FastAPI e React</h1>
      <form onSubmit={addTodo}>
        <input
          type="text"
          value={newTodo}
          onChange={(e) => setNewTodo(e.target.value)}
          placeholder="Adicionar nova tarefa"
        />
        <button type="submit">Adicionar</button>
      </form>
      <ul>
        {todos.map(todo => (
          <li key={todo.id}>
            <input
              type="checkbox"
              checked={todo.completed}
              onChange={() => toggleTodo(todo)}
            />
            <span style={{ textDecoration: todo.completed ? 'line-through' : 'none' }}>
              {todo.title}
            </span>
            <button onClick={() => deleteTodo(todo.id)}>Deletar</button>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App; 