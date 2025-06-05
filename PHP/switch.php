<?php
    $grade = "b";
    switch($grade){
        case "A":
            echo "You did great";
            break;
        case "B":
            echo "You did good";
            break;
        case "C":
            echo "You did okay";
            break;
        case "D":
            echo "You did poorly";
            break;
        case "F":
            echo "You failed";
            break;
        default:
            echo "{$grade} is not valid";
    }
    $date = date("l");

    switch($date){
        case "Monday":
            echo "I hate Mondays";
            break;
        case "TUesday":
            echo "It is taco Tuesday";
            break;
        case "Wednesday":
            echo "The work week is half over";
            break;
        case "Thursday":
            echo "It is crazy Thursday";
            break;
        default:
            echo "We are always happy";
            break;
    }
?>