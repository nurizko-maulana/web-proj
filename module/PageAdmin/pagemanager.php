<?php 
    switch($_GET['page']){
        case "profile":
            include('profile.php');
            break;
        case "manage":
            include('manage.php');
            break;    
        case "status":
            include('status.php');
            break;
        case "edit_user":
            include("edit_user.php");
    }
?>