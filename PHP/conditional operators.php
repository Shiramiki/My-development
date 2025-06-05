<?php
$temp =15;
$cloudy = true;

if($temp >0 && $temp <=30){
    echo "The weather is good <br>";
}
elseif ($temp<0 || $temp >30) {
    echo "the weather is bad";
}
else{
    echo "temp is invalid";
}

if (!$cloudy){
    echo "It is sunny";
}
else{
    echo "It is cloudy <br>";
}
$age = 24;
$citizen = false; 

if ($age >= 18 && $citizen){
    echo "You can vote";
}

else{
    echo "You cannot vote";
}
?>