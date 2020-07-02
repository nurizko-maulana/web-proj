<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header text-center">
                <h3 class="card-title">APPLICATION INFORMATION</h3>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table text-center">
                    <thead class=" text-primary">
                      <th>
                        Student Name
                      </th>
                      <th>
                        Student Matrix
                      </th>
                      <th>
                        Collage
                      </th>
                      <th>
                        Block
                      </th>
                      <th>
                        Room
                      </th>
                      <th>
                        Status
                      </th>
                      <th>
                        Date
                      </th>
                      <th class="text-center">
                        Approvement
                      </th>
                    </thead>
                    <tbody>

                      <?php
                        $query ="SELECT * FROM booking";
                        $sql = mysqli_query($connect,$query);
                        while($row = mysqli_fetch_array($sql))
                        {
        	            ?>
                      <tr>
                        <td>
                          <?php echo $row["user_name"];?></td>
                        </td>
                        <td>
                          <?php echo $row["matrix"];?></td>
                        </td>
                        <td>
                          <?php echo $row["college"];?></td>
                        </td>
                        <td>
                        <?php echo $row["block"];?></td>
                        </td>
                        <td>
                          <?php echo $row["room_no"];?></td>
                        </td>
                        <td>
                          <?php echo $row["book_status"];?></td>
                        </td>
                        <td>
                          <?php echo $row["date_booked"];?></td>
                        </td>
                        <td class="text-center">
                          <a href="manager.php?page=application&book_id=<?php echo $row["book_id"];?>&method=approve"> <button type="button" class="btn btn-success" >Approve</button> </a>
                          <a href="manager.php?page=application&book_id=<?php echo $row["book_id"];?>&method=disapprove"><button type="button" class="btn btn-danger">Disapprove</button> </a>
                        </td>
                      </tr>
                      <?php } ?>

                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>