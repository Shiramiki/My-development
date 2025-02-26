import express from "express"
const app = express()

const PORT = 3000;

app.get("/", (req, res)=> {
    console.log ("[Test]!");
    res.send("hello from homepage")
})


app.listen(PORT, () => console.log(`Server is running on port: https://localhost:${PORT}`))