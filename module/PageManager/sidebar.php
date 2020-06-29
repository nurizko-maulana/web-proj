    <?php $active = $_GET["page"]; ?>
    <div class="sidebar" data-color="orange">
      <div class="logo">
        <a href="#" class="simple-text logo-mini">
          ITC
        </a>
        <a href="#" class="simple-text logo-normal">
          InfiniTea Colleges
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li <?php if($active == "profile"){echo "class='active'";} ?> >
            <a href="./manager.php?page=profile">
              <i class="now-ui-icons users_single-02"></i>
              <p>Manager Profile</p>
            </a>
          </li>
          <li <?php if($active == "application"){echo "class='active'";} ?> >
            <a href="./manager.php?page=application">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>View Application</p>
            </a>
          </li>
          <li <?php if($active == "status"){echo "class='active'";} ?> >
            <a href="./manager.php?page=status">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>View Current Status</p>
            </a>
          <li>
            <a href="../login/logout.php">
              <i class="now-ui-icons media-1_button-power"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>