import express from "express"
const router = express.Router()

const users = [
    {
        name: "John",
        surname:"doe",
        age:30
    },
]

router.get("/", (req, res) =>{
    res.send(users);
    console.log(users)

})



router.post("/", (req, res) =>{
    console.log("Post route reached")
    const user = req.body;
    console.log(req.body);
    // users.push(user);
    // res.send(`${user.name} added to the database`)
    res.send("we heard you")
})

export default router;