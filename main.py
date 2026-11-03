from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy.orm import Session
from .schemas import UserCreate, UserResponse
from .models import User

app = FastAPI(title="HRMS User Registration API")

# ማሳሰቢያ፡ ይህ ለሙከራ የተዘጋጀ የዳታቤዝ ግንኙነት ነው
def get_db():
    db = "እዚህ ጋር የዳታቤዝ ግንኙነት ኮድ ይገባል"
    yield db

@app.post("/register", response_model=UserResponse)
def register_user(user_data: UserCreate):
    # እዚህ ጋር የኢሜይል መኖር እና የይለፍ ቃል ሀሺንግ ይረጋገጣል
    return {
        "id": 1,
        "full_name": user_data.full_name,
        "email": user_data.email,
        "role": user_data.role,
        "is_active": True
    }
