<?php 
    switch($_GET['page']){
        case "profile":
            include('profile.php');
            break;
        case "application":
            include('application.php');
            break;    
        case "status":
            include('status.php');
            break;    
    }
?>