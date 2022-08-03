

<?php 
include 'header.php';
?>

<h1>UiTM ACADEMIC CALENDAR</h1>

<?php
	
	$url = "http://localhost/academic-calendar-uitm/events_api_list.php";

	$client = curl_init($url);
	//curl_setopt($client, CURLOPT_SSL_VERIFYPEER, false)
	curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
	$response = curl_exec($client);

	$result = json_decode($response);
	echo '<table class="table table-striped">';
	echo "<TR><th>ID</th><th>Event</th><th>Description</th><th>Location</th><th>Start Date</th><th>End Date</th>";
	foreach($result as $x => $val) {
		echo "<TR>";
		echo "<td> " .$result[$x]->eventID."</td> ";
		echo "<td> " .$result[$x]->eventTitle . "</td> ";
		echo "<td> " .$result[$x]->eventDescription . "</td> ";	
		echo "<td> " .$result[$x]->eventLocation."</td> ";
		echo "<td> " .$result[$x]->eventDate_Start . "</td> ";
		echo "<td> " .$result[$x]->eventDate_End . "</td> ";	
		echo "</TR>";
	}
	
	echo "</table>";
?>