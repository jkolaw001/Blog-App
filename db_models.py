from sqlalchemy import Column, Date, Integer, String
from sqlalchemy.orm import declarative_base, mapped_column, Mapped
from datetime import date


Base = declarative_base()


class DBPost(Base):
    __tablename__ = "post"
    id: Mapped[int] = mapped_column(
        Integer, primary_key=True, index=True, autoincrement=True
    )
    author: Mapped[str] = mapped_column(String, nullable=False)
    title: Mapped[str] = mapped_column(String, nullable=False)
    body: Mapped[str] = mapped_column(String, nullable=False)
    posted_date: Mapped[date] = mapped_column(Date, nullable=False)
