# Pet Adoption Website

This is a full-stack web project for a pet adoption platform.
- **Frontend**: [React.js](https://github.com/sarah20030409/pet-adoption-frontend)
- **Backend**:  [Python Flask](https://github.com/sarah20030409/pet-adoption-backend)
- **Database**: MySQL

The frontend and backend are maintained in separate repositories.

---

## 📦 Installation

### Backend

1. Navigate to the backend directory:
   ```bash
   cd backend

2. Create and activate a virtual environment:
    ```bash
    python3 -m venv venv
    source venv/bin/activate   # For Linux/macOS
     # or
    .\venv\Scripts\activate    # For Windows

3. Install dependencies:
    ```bash
    pip install -r requirements.txt

4. Set up environment variables :
- Copy `.env.example` to `.env` in the backend folder.
    ```bash
    MYSQL_HOST=localhost
    MYSQL_USER=your_username_here
    MYSQL_PASSWORD=your_password_here
    MYSQL_DB=Pet_Adoption_DB

5. Start the Flask server:
    ```bash
    flask run

This will start the frontend at  [ http://127.0.0.1:5000/]( http://127.0.0.1:5000/)  by default.

## Database Initialization
This project uses MySQL as the database. To manually set up the database, follow these steps:

### 🧾 Import the Database

1. Create the database (if it doesn't already exist):
    ```sql
    CREATE DATABASE Pet_Adoption_DB;

2. Import the schema and initial data from the provided SQL file: 
    ```bash
    mysql -u your_username -p Pet_Adoption_DB < db/Pet_Adoption_DB.sql
