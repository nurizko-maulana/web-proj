<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">User Information</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Username
                      </th>
                      <th>
                        User Type
                      </th>
                      <th>
                        Status
                      </th>
                      <th class="text-center">
                      </th>
                    </thead>
                    <tbody>
                      <?php
                        $connect = mysqli_connect("localhost","root","","accommodation_db");
                        $query ="SELECT * FROM user";
                        $sql = mysqli_query($connect,$query);
                        while($row = mysqli_fetch_array($sql))
                        {
        	            ?>
                      <tr>
                        <td>
                          <?php echo $row["username"];?></td>
                        </td>
                        <td>
                          <?php echo $row["level"];?></td>
                        </td>
                        <td>
                          <?php
                            $status = $row["status"];
                            if($status == 1){
                              echo 'Active';
                            }else{
                              echo 'Inactive';
                            }
                          ?></td>
                        </td>
                        <td class="text-right">
                          <a href="admin.php?page=manage_user&method=edit_user&user_id=<?= $row['user_id'] ?>" type="button" class="btn btn-success btn-md" >Edit</a>
                          <a href="admin.php?page=manage&user_id=<?php echo $row["user_id"];?>&method=delete_user"> <button type="button" class="btn btn-danger">Delete</button> </a>
                        </td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          