const express = require("express");
const path = require("path")
const app= express()
app.get("/", (req, res)=>{
    res.sendFile(path.join(__dirname,"index.html"));
});
app.get("/NodeJS/Project1", (req, res)=>{
    res.json({message:"Hello from the backend!"})
});

const PORT = 3000;

app.listen(PORT,()=>{
    console.log(`Server running at http://localhost:${PORT}`)
});