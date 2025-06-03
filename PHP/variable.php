<?php
    $Username = "Rachel";
    $food = "pizza";
    // echo $Username;
    echo "Hello {$Username}<br>";
    echo "You like {$food} <br>";
    $age = 21;
    echo "You are {$age} years old<br>";
    $quantities = 2;
    echo "you would like to buy {$quantities} items <br>";
     $price = 66.20;
     echo "Your {$food} is \${$price} ";
     $rate = 50.1;
     echo " your success rate is {$rate}%<br>";
    $employed  =  true;
    $online = false;
    $for_sale =true;
    echo "Your emploment statement is: {$employed} <br>";
    echo "your online status is: {$online}";
    $total = $quantities *$price;
    echo "<br> Your total is \${$total}";
?>