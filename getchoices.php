<html>
<body>

<center>
<?php
    
$idnum = $_POST["ID"];
$servername = "172.16.1.145";
//$servername = "10.0.1.66";
$username = "pi";
$password = "raspberry";
$dbname = "PIRATE_TERM";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id, first, last FROM people WHERE id = $idnum";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<b>Student #:</b> " . $row["id"]. " - <b>Name:</b> " . $row["first"]. " " . $row["last"]. "<br><br>";

    }
   $sql = "SELECT personID, people.gradyr, people.first, people.last, c1.title as choice1, c2.title as choice2, c3.title as choice3 FROM enrollchoices JOIN people ON enrollchoices.`personID` = people.id LEFT JOIN classes c1 ON enrollchoices.first = c1.classID LEFT JOIN classes c2 ON enrollchoices.second = c2.classID LEFT JOIN classes c3 ON enrollchoices.third = c3.classID WHERE enrollchoices.personID = $idnum";
    $result = $conn->query($sql);
	if ($result->num_rows > 0) {
		echo "You've already registered. Thanks.";
		return;
	}
	else {

// Get past enrollments
	$sql = "SELECT classes.title, enrollments.year FROM classes, enrollments WHERE enrollments.personID = $idnum AND classes.classID = enrollments.classID ORDER BY enrollments.year";
	$classresult = $conn->query($sql);
	if ($classresult->num_rows > 0) {
		echo "<b>Past enrollments</b><br>";
        // output data of each row
        while($row = $classresult->fetch_assoc()) {
            echo $row["title"]. " - " . $row["year"]. "<br>";
		}
	}

    // Get current offerings, but eliminate those that have been taken before.
	$cantake = array();
	$sql = "select classes.title, classes.description from classes, offerings where classes.classID = offerings.classID AND offerings.closed != 1 AND classes.classID not in (select classes.classID from people, classes, enrollments where enrollments.`personID`=people.id and enrollments.`classID`=classes.`classID` and people.`id`= $idnum) ORDER BY classes.title";
	$offresult = $conn->query($sql);
	if ($offresult->num_rows > 0) {
		echo "<hr><br><big><big><b>Your choices for this year:</b></big></big><br>";
        // output data of each row
        while($row = $offresult->fetch_assoc()) {
            $cantake[] = $row["title"];
            echo "<big>". $row["title"]. "</big><br>";
        }
        
//		echo "<br>";var_dump($cantake);echo "<br><br>";
		$lencantake = count($cantake);
//        echo "<br>";var_dump($lencantake);echo "<br><br>";
	}
    echo "<br><br><br>";
    echo "<form name=\"form1\" method=\"post\" action=\"\">";
    echo "<table class=\"reference\">";
    echo "<tr>";
    echo "<th>First Choice</th>";
    echo "<th>Second Choice</th>";
    echo "<th>Third Choice</th>";
    echo "</tr>";
    echo "<tr>";
    echo "<td>";
   
    echo "<select id=\"opts\" onchange=\"populateSecond(); populateThird();\">";
        $i = 1;
        echo "<option value=\"0\">Select Option</option>";
        while($i <= $lencantake) {
            echo "<option value=\"". $i . "\">". $cantake[$i - 1]. "</option>";
            $i++;
        }
        echo "</select>";
    echo "</td>";
    
    echo "<td>";
    echo "<select id=\"dd2\" onChange=\"populateThird();\">";
    echo "<option value=\"0\">Select Option</option>";
    echo "</select>";
    echo "</td>";
    
    echo "<td>";
    echo "<select id=\"dd3\">";
    echo "<option value=\"0\">Select Option</option>";
    echo "</select>";
    echo "</td>";
    echo "</tr>";
    echo "</table>";
    echo "<br><br>";
    
    echo "<input id=\"subBut\" type=\"button\" name=\"submit\" value=\"Submit\" onClick=\"processChoices($idnum)\">";
    echo "</form>";
    
    
    
    echo "<br><br>";
}
}
else {
    echo "Your ID num is not found. Try again, or notify the authorities that you don't exist.<br>";
    echo "<br><a href=\"startform.html\">Go back</a><br>";
}
$conn->close();
?>

<script type="text/javascript">

function AddItem(Text,Value)
{
    // Create an Option object
    var opt = document.createElement("option");

    // Add an Option object to Drop Down/List Box
    document.getElementById("dd2").options.add(opt);
    // Assign text and value to Option object
    opt.text = Text;
    opt.value = Value;

}
//end function AddItem


function populateThird() {
    var dd1List = document.getElementById("opts");
    var dd2List = document.getElementById("dd2");
    var dd3List = document.getElementById("dd3");
    
    dd3List.options.length = 0; // this removes existing options
    
    for (var i = 0; i <= dd1List.options.length; i++) {
        if (i == 0 || (!dd1List.options[i].selected && dd2List.options[dd2List.selectedIndex].value != dd1List.options[i].value)) {
            dd3List.options.add(dd1List.options[i].cloneNode(true));
        }
    }
}

function populateSecond() {
    var serverList = document.getElementById("opts");
    var clientList = document.getElementById("dd2");
    var dd3List = document.getElementById("dd3");
    
    clientList.options.length = 0; // this removes existing options
    
    for (var i = 0; i <= serverList.options.length; i++) {
        if (i == 0 || !serverList.options[i].selected) {
            clientList.options.add(serverList.options[i].cloneNode(true));
        }
    }
}
// end function populateSecond

function showForm() {
    var dd1 = document.getElementById("opts");
    var dd2 = document.getElementById("dd2");
    var selopt = dd1.value;
    
    document.getElementById("firstchoice").innerHTML = selopt;
    if (selopt != 0) {
        dd2.options.length = 0; // clear all the options in dd2
        for (var j = 0; j <= dd1.options.length; j++) {
            if (!dd1.options[j].selected) {
                dd2.options.add(dd1.options[j].cloneNode(true));
            }
        }
        document.getElementById("f1").style.display = "block";
        document.getElementById("f2").style.display = "none";
    }
    if (selopt == 0) {
        document.getElementById("f2").style.display = "none";
        document.getElementById("f1").style.display = "none";
    }
}

function processChoices( idnum ) {
    var dd1List = document.getElementById("opts");
    var dd2List = document.getElementById("dd2");
    var dd3List = document.getElementById("dd3");
 
    var c1 = dd1List.value;
    var c2 = dd2List.value;
    var c3 = dd3List.value;
    
    if (dd1List.selectedIndex == 0 || dd2List.selectedIndex == 0 || dd3List.selectedIndex == 0)
    {
        alert( "You must select your top THREE choices.");
        return;
    }
    
/*
    for (var j = 0; j <= dd1List.options.length; j++) {
        if (dd1List.options[j].selected) {
            var c1text = dd1List.options[j].text;
        }
    }
 */
    var c1text = dd1List.options[dd1List.selectedIndex].text;
    var c2text = dd2List.options[dd2List.selectedIndex].text;
    var c3text = dd3List.options[dd3List.selectedIndex].text;

    var sqlinsert = "INSERT INTO `enrollchoices` (`id`, `personID`, `first`, `second`, `third`) VALUES (NULL, " + idnum + ", (SELECT `classID` FROM `classes` WHERE `title` = \"" + c1text + "\")" +
        ", (SELECT `classID` FROM `classes` WHERE `title` = \"" + c2text + "\")" +
        ", (SELECT `classID` FROM `classes` WHERE `title` = \"" + c3text + "\"))";

//    alert( idnum + "\n" + c1text + "\n" + c2text + "\n" + c3text);
//    alert( sqlinsert );
    
    var nothin = showUser(sqlinsert);
}

function showUser(str) {
    if (str == "") {
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("endMsg").innerHTML = xmlhttp.responseText;
            }
        }
//        alert( "str = " + str );
        xmlhttp.open("GET","sendsql.php?q="+str,true);
        xmlhttp.send();
    }
    document.getElementById('subBut').style.visibility = 'hidden';
    return true;
}

function showClassDesc( str ) {
    document.getElementById("classDesc").innerHTML = str;
}

</script>

<div id="endMsg"></div>

</center>
</body>
</html>
