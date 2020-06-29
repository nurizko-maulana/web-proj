<?php 
session_start();

require_once "../login/authCookieSessionValidate.php";

if(!$isLoggedIn) {
    header("Location: ../login");
}
?>