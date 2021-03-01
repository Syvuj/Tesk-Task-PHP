<?php 

$connect = mysqli_connect('localhost', 'root', '', 'tasksbd');
if (!$connect) {
    die ("No connection with DB" . mysqli_error($connect));
}
