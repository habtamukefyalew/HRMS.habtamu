from pydantic import BaseModel, EmailStr

class UserCreate(BaseModel):
    full_name: str
    email: EmailStr
    password: str
    role: str = "Employee"

class UserResponse(BaseModel):
    id: int
    full_name: str
    email: EmailStr
    role: str
    is_active: bool

    class Config:
        from_attributes = True
from pydantic import BaseModel, Field
from datetime import datetime
from typing import Optional

# ሰራተኛ ለመመዝገብ ከውጭ የሚመጣ ዳታ ፎርማት
class EmployeeCreate(BaseModel):
    full_name: str = Field(..., min_length=2, max_length=100)
    role: str
    department: str
    salary: float = Field(..., gt=0) # ደመወዝ ከ 0 በላይ መሆን አለበት

# መረጃው ተመዝግቦ ሲመለስ የሚታየው ፎርማት
class EmployeeResponse(BaseModel):
    id: int
    full_name: str
    role: str
    department: str
    salary: float
    hire_date: datetime

    class Config:
        from_attributes = True
