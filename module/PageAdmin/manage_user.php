<?php 
    if(isset($_GET['method']) && $_GET['method'] == "update_user")
    {    
        echo $id   = $_POST['user_id'];
        echo $username = $_POST['username'];
        echo $status   = $_POST['level'];
        echo $password  = $_POST['password'];
        echo $password = password_hash($password, PASSWORD_DEFAULT);
  
        
            if (!mysqli_query($connect, "UPDATE user SET username='$username',password='$password', status=$status WHERE user_id = $id")) {
                echo("Error description: " . mysqli_error($connect));
              }
            //redirectig to the display page. In our case, it is index.php
            header("Location: http://localhost/WEB-PROJ/module/admin.php?page=manage");
        
    }
    if(isset($_GET["method"])){
        if(strcmp($_GET["method"],"edit_user") == 0){
            $user_id = $_GET['user_id'];
            $sql = mysqli_query($connect,"SELECT * FROM user WHERE user_id = '$user_id'");
            while($row = mysqli_fetch_array($sql))
            {
                $username = $row['username'];
            }
        }        
    }
?>
<div class="content">
        <div class="row justify-content-center">
            <div class="col-md-6 col-centered">
                <div class="card">
                <div class="card-header text-center">
                    <h4 class="card-title">Update User Information</h4>
                </div>
                <div class="card-body">
                    <form role="form" action="./admin.php?page=manage_user&method=update_user" method="post">
                        <input type="hidden" name="user_id" value="<?= $user_id; ?>">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="username" class="form-control" value="<?= $username; ?>">      
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input type="text" name="password" class="form-control" value="" placeholder="new password">      
                        </div>

                        <div class="form-group">
                        <div class="custom-control custom-radio custom-control-inline">
                            <input name=level id="radio_0" type="radio" class="custom-control-input" value="1"> 
                            <label for="radio_0" class="custom-control-label">active</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input name=level id="radio_1" type="radio" class="custom-control-input" value="0"> 
                            <label for="radio_1" class="custom-control-label">inactive</label>
                        </div>   
                        </div>

                        <div class="modal-footer">  
                            <button type="submit"  class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
          </div>
        </div>
    </div>
</div>
