greet("Alice", afterGreeting);

function fetchData(callback){
    console.log("Fetching data...;");
    setTimeout(()=>{
        console.log("Data recieved!");
        callback();
    })
}

function processData(){
    console.log("Processing data");
}

fetchData(processData);

function step1(callback){
    setTimeout(() =>{
        console.log("Step 1 Complete");
        callback();
    }, 1000);
}

function step2(callback){
    setTimeout(()=> {
        console.log("step 2 Complete");
        callback();
    },1000);
}

function step3(){
    setTimeout(() => {
        console.log("Step 3 complete");        
    }, 1000);
}

step1(()=>{
    step2(()=>{
        step3()
    });
});