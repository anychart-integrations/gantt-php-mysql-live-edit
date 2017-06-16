<?php
	// Connect to MySQL database
	$mysqli = new mysqli("localhost", "anygantt_user", "anygantt_pass", "anygantt_db", 18889);

	// check connection
    if ($mysqli->connect_errno) printf('{"fail": "Connect failed: %s"}', $mysqli->connect_error);

    $query = "SELECT * FROM tasks";

    if ($result = $mysqli->query($query)) {
        // fetch all data
        while ($tasks[] = $result->fetch_assoc()) {}

        // remove last null
        array_pop($tasks);
    }

	// Return the result and close MySQL connection
	$mysqli->close();
	echo json_encode($tasks);
	mysqli_free_result($result);
?>