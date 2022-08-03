<?php 
include 'header.php';
?>

<h1>EVENT REMINDER</h1>

<?php
	
	$url = "http://localhost/academic-calendar-uitm/selected_events_api.php";

	$client = curl_init($url);
	//curl_setopt($client, CURLOPT_SSL_VERIFYPEER, false)
	curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
	$response = curl_exec($client);

	$result = json_decode($response);
	echo '<table class="table table-striped">';
	echo "<TR><th>ID</th><th>Event</th><th>Description</th><th>Location</th><th>Start Date</th><th>End Date</th>";
	foreach($result as $x => $val) {
		echo "<TR>";
		echo "<td> " .$result[$x]->id."</td> ";
		echo "<td> " .$result[$x]->title . "</td> ";
		echo "<td> " .$result[$x]->description . "</td> ";	
		echo "<td> " .$result[$x]->location."</td> ";
		echo "<td> " .$result[$x]->date . "</td> ";
		echo "<td> " .$result[$x]->time_from . "</td> ";
		echo "<td> " .$result[$x]->time_to . "</td> ";	
		echo "</TR>";
	}
	
	echo "</table>";
?>