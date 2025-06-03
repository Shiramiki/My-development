<!-- get and post 
special variables used to collect data from a HTML form
data is sent to the file in the action attribute of <form>
    <form action = "some_file.php" method  = "get">
        
Get
    data is appended to url
    not secure
    char limit
    bookmark is possibe w/ values 
    Get requests canbe cached 
    Better for search page

post 
    data is packaged inside the body of the HTTP requesrt
    Mor secure 
    no data limit 
    cannt bookmark 
    get requests are not cached 
    better for submitting credentials 
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- <form action = "get and post.php" method = "post">
        <label>Username</label><br>
        <input typr ="text" name = "username"><br>
        <label>Password</label><br>
        <input typr ="text" name = "password"><br>
        <input type="submit" value ="Log in">
    </form> -->

    <form action ="get and post.php" method = "post">
        <label> Quantity<label>
        <input type = "text" name = "quantity"> 
        <input type ="submit" value = "Total">
    </form>

</body>
</html>
<?php
    // echo $_GET["username"]. "<br>";
    // echo $_GET["password"];
    // echo $_POST["username"]. "<br>";
    // echo $_POST["password"];
    $item  = "pizza";
    $price = 5.99;
    $quantity = $_POST["quantity"];
    $total = null;
    $total = $quantity * $price;
    echo "<br>You have ordered {$quantity}x {$item}s";
    echo "<br> Your total is  \${$total}";
?>