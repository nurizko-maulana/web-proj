<?php 
    if(isset($_GET['method']) && $_GET['method'] == "update_user")
    {    
        $id = $_POST['id'];
        $name=$_POST['username'];
        $age=$_POST['password'];
  
        
        
            $result = mysqli_query($connect, "UPDATE users SET name='$name',age='$age',email='$email' WHERE id=$id");
            
            //redirectig to the display page. In our case, it is index.php
            header("Location: fetch.php");
        
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
                        <input type="hidden" name="user_id" value="<?php echo $id; ?>">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="username" class="form-control" value="<?= $username; ?>">      
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input type="text" name="password" class="form-control" value="" placeholder="new password">      
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
