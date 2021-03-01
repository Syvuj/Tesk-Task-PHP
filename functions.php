<?php 

require_once 'db.php';

function Show_Workers_and_Tasks(){
	global $connect;
	$workers_query = "SELECT * FROM tasks RIGHT JOIN workers ON tasks.worker1 = workers.id OR tasks.worker2 = workers.id OR tasks.worker3 = workers.id UNION SELECT * FROM tasks LEFT JOIN workers ON tasks.worker1 = workers.id OR tasks.worker2 = workers.id OR tasks.worker3 = workers.id";
	$workers = mysqli_query($connect,$workers_query);
	foreach($workers as $worker){
		//print_r($worker);
		$PIB = $worker['FirstName']." ".$worker['SecondName'];
		//echo $worker['name']."<br>".$PIB;


		if($worker['name'] == 'task1'){
			echo $PIB." Task 1 <br>";
		}
		if($worker['name'] == 'task2'){
			echo $PIB." Task 2 <br>";
		}
		if($worker['name'] == 'task3'){
			echo $PIB." Task 3 <br>";
		}
		if($worker['name'] == 'task4'){
			echo $PIB." Task 4 <br>";
		}
		if($worker['name'] == 'task5'){
			echo $PIB." Task 5 <br>";
		}
		
	}
}

function Show_Info_About_Tasks(){
	global $connect;
	$tasks_query = "SELECT * FROM tasks";
	$tasks = mysqli_query($connect,$tasks_query);
	foreach ($tasks as $task) {
		if(!($worker1 = 0)){
			if(!($worker2 != 0)){
				if(!($worker3 != 0)){
				 $works = "3";
				}else{
			$works = "2";
		}
			}else{
			$works = "1";
		}
		}else{
			$works = "no one is assigned to the task";
		}
		$info = $task['name']." ".$task['status']." ".$works."<br>";
		echo $info;
	}
}