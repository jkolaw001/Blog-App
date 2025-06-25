# Simple Blog App

A simple blog platform for creating, viewing, and managing blog posts.
Built with FastAPI, PostgreSQL, SQLAlchemy, and vanilla JavaScript.

![image](https://github.com/user-attachments/assets/9e162033-7580-4393-b206-178ab5417354)
![image](https://github.com/user-attachments/assets/228f91a3-a16e-4739-8375-3e41b6010a9d)

---

## Features

-   Create, view, and list blog posts
-   Responsive web interface
-   RESTful API backend

---

## Tech Stack

-   **Backend:** FastAPI (Python)
-   **Database:** PostgreSQL (via Docker)
-   **ORM:** SQLAlchemy
-   **Frontend:** HTML, CSS, JavaScript

---

## Setup

### 1. Clone the repository

```bash
git clone <repo-url>
cd fsf-4-blog-app
```

### 2. Start the PostgreSQL database with Docker

```bash
docker compose up -d
```

If you want to ensure a clean environment, run:

```bash
# Kill all running containers
docker kill $(docker ps -q)

# Remove all artifacts for all stopped containers
docker system prune -af
```

### 3. Connect to the database (optional)

To access the PostgreSQL shell inside the running container:

```bash
docker exec -it postgres_db psql -U postgres
```

### 4. Install Python dependencies

```bash
pip install "fastapi[standard]" psycopg sqlalchemy
```

### 5. Run the FastAPI server

```bash
fastapi dev main.py
```

The app will be available at [http://localhost:8000/static/posts.html](http://localhost:8000/static/posts.html)

---

## Usage

-   **View all posts:** [http://localhost:8000/static/posts.html](http://localhost:8000/static/posts.html)
-   **Create a new post:** [http://localhost:8000/static/post-create.html](http://localhost:8000/static/post-create.html)
-   **View post details:** Click a post title on the posts page

---

## Database

-   The schema and sample data are in `data/blog.sql`.
-   To load sample data, connect to the database and run:

```bash
psql -h localhost -U postgres -d blog -f data/blog.sql
```

---


