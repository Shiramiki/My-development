<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- <form action = "Math func.php" method = "post">
        <label>x: </label>
        <input type = "text" name = "x">
        <label>y: </label>
        <input type = "text" name = "y">
        <label>z: </label>
        <input type = "text" name = "z">
        <input type ="submit" value = "total">

    </form> -->

    <form action = "Math func.php" method = "post">
        <label> radius</label>
        <input type ="text" name = "radius">
        <input type ="submit" value = "calculate">
        <br>
    </form>
</body>
</html>

<?php
// $x = $_POST["x"];
// $y= $_POST["y"];
// $z= $_POST["z"];
// $total = null;

// $total = abs($x);

// $total = round($x);
// $total = floor($x);
// $total= ceil($x);

// $total = pow($x, $y);
// $total =sqrt($x);
// $total = max($x, $y, $z);
// $total = min($x, $y, $z);
// $total = pi();
// $total = rand($x, $y);
// echo $total;

$radius = $_POST["radius"];
$cir = null;
$cir = round((2*pi() * $radius), 2);
echo "Circumfrence = {$cir}cm <br>";

$area =pi() * pow($radius, 2);
$area = round($area,2);
echo "area = {$area}cm^2 <br>";

$volume = 4/3* pi() * pow($radius,3);
$volume = round($volume,2);
echo "Volume = {$volume}cm^3 <br>";
?>