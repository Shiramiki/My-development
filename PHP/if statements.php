<?php
    $age =0;
    if ($age >=18){
        echo "You may enter this site";
    }
    elseif($age ==0){
        echo "You were just born";
    }

    elseif($age< 0){
        echo "That wasnt a valid age";
    }
    elseif($age>=100){
        echo"You are too old for this site";
    }
    else {
        echo "You must be 18 plus to enter";
    }

    $adult = true;

    if($adult == true){
        echo "You may enter this site";
    }
    else{
        echo "You must be an adult to enter this page";
    }

    $hours = 50;
    $rate = 15;
    $weekly_pay =null;

    if($hours<=0){
        $weekly_pay = 0;
    }
    
    elseif($hours<=40){
        $weekly_pay = $hours * $rate;
    }

    else {
        $weekly_pay = ($rate *40) + ($hours - 40) * ($rate *1.5);
    }

    echo "You made \${$weekly_pay} this week"


?>