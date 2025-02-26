document.getElementById("fetchMessageBtn").addEventListener("click", () =>{
    fetch("http://localhost:3000/NodeJS/Project1")
    .then(response => response.json())
    .then(data => {
        document.getElementById("serverMessage").textContent =data.message;

    })
    .catch(error => console.error("error", error))
})