<div class="content">
          <div class="row justify-content-md-center">
            <div class="col-md-6">
              <div class="card ">
                <div class="card-header text-center">
                  <h3 class="card-title">APPLICATION STATUS</h3>
                </div>
                <div class="card-body">
                  <?php 
                   $sql = mysqli_query($connect,"SELECT * FROM booking WHERE user_id =".$_SESSION["member_id"]);
                    while($row = mysqli_fetch_array($sql))
                    {
                      $status = $row['book_status'];
                      $price = $row['total_price'];
                      $room = $row['room_no'];
                      $college = $row['college'];
                      $block = $row['block'];
                    }
                  ?>
                  <div class="card img-fluid">
                    <img class="card-img-top" src="../assets/img/college1.jpg" alt="Card image" style="width:100%">
                      <div class="card-header">
                        <h5 class="card-category">PREMIUM</h5>
                        <h4 class="card-title"><?= $college; ?></h4>
                        <p class="card-text">Block : <?= $block; ?></p>
                        <p class="card-text">Room  : <?= $room; ?></p>
                        <p class="card-text">Price : RM<?= $price; ?></p>
                      </div>
                      <div class="card-footer">
                      <?php 
                        if(strcmp($status,'pending') == 0){
                          echo '<div class="alert alert-warning text-center">
                                <span>Your application pending to be approved</span>
                                </div>';
                        }else if(strcmp($status,'approve') == 0){
                          echo '<div class="alert alert-success text-center">
                                <span>Your application has been approved</span>
                                </div>';
                        }else if(strcmp($status,'rejected') == 0){
                          echo '<div class="alert alert-danger text-center">
                                <span>Your application has been rejected</span>
                                </div>';
                        }
                      ?>
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>






          