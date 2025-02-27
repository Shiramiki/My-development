import express from "express";
import userRoutes from "./routes/users.js";  // Make sure the file path is correct


const app = express();
const PORT = 4000;

// Use the user routes for any URL starting with "/users"
app.use("/users", userRoutes);

app.get("/", (req, res) => {
    res.send("Hello from the homepage");  // Fixed typo
});

// Start the server and listen on port 3000
app.listen(PORT, () => console.log(`Server is running on port: http://localhost:${PORT}`));  // Fixed port logging
