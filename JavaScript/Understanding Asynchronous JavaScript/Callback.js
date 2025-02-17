function greet(name, callback){
    console.log("Hello, " + name);
    // if (callback){
    //     callback();
    // }
    callback()
}

function afterGreeting(){
    console.log("How are you");
}
