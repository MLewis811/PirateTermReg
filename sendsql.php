<?php
    $q = $_GET['q'];
    
//    echo "The variable contains = ".$q . "<br>";

    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    
    // $servername = "10.0.1.66";
    $servername = "172.16.1.145";
    $username = "pi";
    $password = "raspberry";
    $dbname = "PIRATE_TERM";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    
    $res = mysqli_query($conn,$q);
//    $res = $conn->query($q);
    
    //mysqli_close($conn);
//    var_dump($res);
    
?>
    <br><big><big><b>Done! Class assignments will be posted soon.</b></big></big><br>
    <a href="./startform.html">Start another registration.</a>
