from datetime import date
from pydantic import BaseModel
from sqlalchemy import Column, Date, Integer, String


class PostBase(BaseModel):
    author: str
    title: str
    body: str


# TODO: Please write a Pydantic model to be used when creating a new post
class PostCreate(PostBase):
    posted_date: date | None = None


class PostOut(PostBase):
    id: int
    posted_date: date
