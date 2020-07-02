<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header text-center">
                <h3 class="card-title">Current College Status</h3>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        College Name
                      </th>
                      <th>
                        Number of Students
                      </th>
                      <th>
                        Fees/Semester
                      </th>
                      <th>
                        Full/Not Full
                      </th>
                    </thead>
                    <tbody>
                      <?php
                        $connect = mysqli_connect("localhost","root","","accommodation_db");
                        $query ="SELECT * FROM college";
                        $sql = mysqli_query($connect,$query);
                        while($row = mysqli_fetch_array($sql))
                        {
        	            ?>
                      <tr>
                        <td>
                          <?php echo $row["college_name"];?></td>
                        </td>
                        <td>
                          200
                        </td>
                        <td>
                          RM<?php echo $row["college_price"];?></td>
                        </td>
                        <td>
                          Not Full
                        </td>
                      </tr>
                        <?php } ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>