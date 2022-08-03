<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require_once "dbConfig.php";

$query = "SELECT * FROM events";

$result = mysqli_query($db, $query) or die("Select Query Failed.");

$count = mysqli_num_rows($result);

if($count > 0)
{ 
 $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
 http_response_code(200);
 echo json_encode($row);
}
else
{ 
	http_response_code(400);
 	echo json_encode(array("message" => "No Event Found.", "status" => false));
}

?>
