<?php
  $sql = mysqli_query($connect,"SELECT * FROM user WHERE user_id =".$_SESSION["member_id"]);
  while($row = mysqli_fetch_array($sql))
  {
    $user_name = $row['username'];
    $level = $row['level'];
  }
?>
<div class="content">
        <div class="row d-flex justify-content-center">
          <div class="col-md-4 ">
            <div class="card card-user">
              <div class="image">
                <img src="../assets/img/bg5.jpg" alt="...">
              </div>
              <div class="card-body">
                <div class="author">
                  <a href="#">
                    <img class="avatar border-gray" src="../assets/img/mike.jpg" alt="...">
                    <h5 class="title"><?= $user_name; ?></h5>
                  </a>
                  <p class="description">
                    <?= $level; ?>
                  </p>
                </div>
                <p class="description text-center">
                </p>
              </div>
              <hr>
              <div class="button-container">
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-facebook-f"></i>
                </button>
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-twitter"></i>
                </button>
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-google-plus-g"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>