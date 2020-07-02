<?php 
    if(isset($_GET["method"])){
        if(strcmp($_GET["method"],"edit_user") == 0){
            $user_id = $_GET['user_id'];
            $sql = mysqli_query($connect,"SELECT * FROM user WHERE user_id = '$user_id'");
            include("./PageAdmin/manage_user.php");
        }        
    }
?>
<form role="form" action="#" method="post">
<input type="hidden" name="user_id" value="<?php echo $id; ?>">
<div class="form-group">
<label>Username</label>
<input type="text" name="username" class="form-control" value="<?= $sql['username']; ?>">      
</div>

<div class="form-group">
<label>Password</label>
<input type="text" name="password" class="form-control" value="" placeholder="new password">      
</div>

<div class="modal-footer">  
<button type="submit" class="btn btn-success">Update</button>
</div>
</form>
