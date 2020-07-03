<?php 
    if(isset($_GET['method']) && $_GET['method'] == "insert_data")
    {    
        echo $college   = $_POST['college'];
        echo $block = $_POST['block'];
        echo $room   = $_POST['room'];
        echo $matrix  = $_POST['matrix'];
        echo $name  = $_POST['name'];
        echo $id = $_SESSION['member_id'];
  
        
            if (!mysqli_query($connect, "INSERT INTO booking (book_status, room_no, user_id, user_name, matrix, college, block) 
                                            VALUES ('pending', $room, '$id', '$name', '$matrix', '$college', '$block')")) {
                echo("Error description: " . mysqli_error($connect));
              }
            //redirectig to the display page. In our case, it is index.php
            //header("Location: http://localhost/WEB-PROJ/module/student.php?page=application");
        
    }
    if(isset($_GET["method"])){
        if(strcmp($_GET["method"],"insert_college") == 0){
            $user_id = $_SESSION['user_id'];
            $sql = mysqli_query($connect,"SELECT * FROM user WHERE user_id = '$user_id'");
            while($row = mysqli_fetch_array($sql))
            {
                echo $username = $row['username'];

            }
        }        
    }
?>
<div class="content">
        <div class="row justify-content-center">
            <div class="col-md-6 col-centered">
                <div class="card">
                <div class="card-header text-center">
                    <h4 class="card-title">Application Form</h4>
                </div>
                <div class="card-body">
                    <form role="form" action="./student.php?page=insert_college&method=insert_data" method="post">

                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="" placeholder="your name">      
                        </div>
                        <div class="form-group">
                            <label>College</label>
                            <input type="text" name="college" class="form-control" value="" placeholder="new college">      
                        </div>

                        <div class="form-group">
                            <label>Block</label>
                            <input type="text" name="block" class="form-control" value="" placeholder="new block">      
                        </div>

                        <div class="form-group">
                            <label>Room</label>
                            <input type="text" name="room" class="form-control" value="" placeholder="new room">      
                        </div>

                        <div class="form-group">
                            <label>Matrix</label>
                            <input type="text" name="matrix" class="form-control" value="" placeholder="matrix number">      
                        </div>


                        <div class="modal-footer">  
                            <button type="submit"  class="btn btn-success">BOOK</button>
                        </div>
                    </form>
                </div>
          </div>
        </div>
    </div>
</div>
