<?php $active = $_GET["page"]; ?>
<div class="sidebar" data-color="orange">
        <div class="logo">
          <a href="http://www.creative-tim.com" class="simple-text logo-mini">
            ITC
          </a>
          <a href="http://www.creative-tim.com" class="simple-text logo-normal">
            InfiniTea Collages
          </a>
        </div>
        <div class="sidebar-wrapper" id="sidebar-wrapper">
          <ul class="nav">
            <li <?php if($active == "profile"){echo "class='active'";} ?> >
              <a href="./student.php?page=profile">
                <i class="now-ui-icons users_single-02"></i>
                <p>My Profile</p>
              </a>
            </li>
            <li <?php if($active == "list"){echo "class='active'";} ?> >
              <a href="./student.php?page=list">
                <i class="now-ui-icons design_app"></i>
                <p>List Of Colleges</p>
              </a>
            </li>
            <li <?php if($active == "application"){echo "class='active'";} ?> >
              <a href="./student.php?page=application">
                <i class="now-ui-icons education_atom"></i>
                <p>Applicantion</p>
              </a>
            </li>
            <li>
              <a href="../login/logout.php">
                <i class="now-ui-icons media-1_button-power"></i>
                <p>Logout</p>
              </a>
            </li>
          </ul>
        </div>
      </div>