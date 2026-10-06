# AtlasApp - MERN Full-Stack Application

Built from the **PVP Siddhartha College MERN Workshop** guide.

## 🏗️ Architecture

```text
          USER
           │
           ▼
    React Frontend (Port 3000)
    [App.jsx & App.css]
           │
           │ HTTP (Fetch API / CORS)
           ▼
     Express API (Port 5000)
     [/api/register & /api/login]
           │
           │ Mongoose ODM
           ▼
      Node.js Server
           │
           ▼
     MongoDB Atlas (Cloud Cluster)
     [Database: mern_demo, Collection: users]
```

---

## 📁 Project Structure

```text
atlas-app/
├── backend/
│   ├── .env                # Port and MongoDB Atlas connection string
│   ├── .env.example        # Environment variable template
│   ├── package.json        # Express, Mongoose, bcryptjs, cors, dotenv
│   └── server.js           # Server, User schema, register & login endpoints
└── frontend/
    ├── index.html          # HTML entry point
    ├── package.json        # React 18, Vite
    ├── vite.config.js      # Vite dev server configuration (port 3000)
    └── src/
        ├── App.css         # Complete UI styling (Auth, Navbar, Hero, Cards)
        ├── App.jsx         # Full React component with Login, Register, Home
        └── main.jsx        # React root mounting point
```

---

## 🚀 Getting Started

### Prerequisites

- **Node.js** (v18 or later) & **npm**  
  *If not already installed on Windows, you can install it using:*
  ```powershell
  winget install OpenJS.NodeJS.LTS
  ```

---

### Step 1: Configure MongoDB Atlas

1. Log in to [MongoDB Atlas](https://cloud.mongodb.com).
2. Create or select a free **M0 Cluster**.
3. Under **Security → Database Access**, create a user (e.g. `mern_user`) with `Read and write to any database`.
4. Under **Security → Network Access**, add an IP address with `0.0.0.0/0` (allow access from anywhere).
5. Under **Deployment → Database → Clusters → Connect → Drivers (Node.js)**, copy your connection string.
6. Open `backend/.env` and update `MONGO_URI`:
   ```env
   PORT=5000
   MONGO_URI=mongodb+srv://<username>:<password>@cluster0.ekxcxfx.mongodb.net/mern_demo?retryWrites=true&w=majority&appName=Cluster0
   ```
   *(Replace `<username>` and `<password>` with your database user credentials)*

---

### Step 2: Run the Backend

In a terminal, navigate to the `backend` folder:

```powershell
cd C:\Users\chowd\.gemini\antigravity\scratch\atlas-app\backend
npm install
npm run dev
```

You should see:
```text
MongoDB Atlas connected successfully
Server running on http://localhost:5000
```

Verify in your browser by visiting `http://localhost:5000/`. You should see:
```json
{ "message": "API is running" }
```

---

### Step 3: Run the Frontend

In a second terminal, navigate to the `frontend` folder:

```powershell
cd C:\Users\chowd\.gemini\antigravity\scratch\atlas-app\frontend
npm install
npm run dev
```

Open `http://localhost:3000` in your browser.

---

## 🧪 Workshop MongoDB CRUD Cheat Sheet

The workshop covers these core MongoDB operations:

| Operation | Query / Method | Example |
|---|---|---|
| **Create** | `db.users.insertOne(...)` | `db.users.insertOne({ name: "ram", email: "ram@gmail.com", age: 22 })` |
| **Read** | `db.users.find(...)` | `db.users.find({ name: "ram" })` |
| **Update** | `db.users.updateOne(...)` | `db.users.updateOne({ email: "ram@gmail.com" }, { $set: { name: "ramswaroop" } })` |
| **Delete Field** | `db.users.updateMany(...)` | `db.users.updateMany({ email: "ram@gmail.com" }, { $unset: { age: "" } })` |
| **Delete Document**| `db.users.deleteOne(...)` | `db.users.deleteOne({ email: "ram@gmail.com" })` |
