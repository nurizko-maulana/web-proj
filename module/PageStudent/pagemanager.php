<?php 
    switch($_GET['page']){
        case "profile":
            include('profile.php');
            break;
        case "list":
            include('college.php');

            break;    
        case "application":
            include('application.php');
            break;    
        case "insert_college":
            include('insert_college.php');
            break;
    }
?>