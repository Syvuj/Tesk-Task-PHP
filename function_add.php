<?php

require_once 'db.php';

function Add_New_Task(){
	global $connect;
	global $new_task;
	if(isset($_POST['new_task'])) {
		$new_task = $_POST['new_task'];
		$clown = rand(5, 999);
		$tasks_query = "INSERT INTO tasks (id, name, status, worker1, worker2, worker3) VALUES ('$clown','$new_task','New','0','0','0')";
		if (mysqli_query($connect, $tasks_query)) {
      echo "New record created successfully";
} else {
      echo "Error: " . $tasks_query . "<br>" . mysqli_error($connect);
}
	}else{
		exit;
	}
}
Add_New_Task();