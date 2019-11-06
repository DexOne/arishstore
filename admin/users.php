<?php
ob_start(); // Output Buffering Start

session_start();
$pageTitle = 'Users';
if (isset($_SESSION['Username']) && $_GET['adminPanel'] == 'Manage-users') {
  include 'init.php';
  include $templates . 'header.php';


  $adminPanel = isset($_GET['adminPanel']) ? $_GET['adminPanel'] : 'Manage';
  if ($adminPanel == 'Manage-users') {

  ?>
<div class="wrapper">
<?php include $templates . 'navbar.php';
      include $templates . 'sidebar.php';
      ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">احصائيات الموقع</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">الرئيسية</a></li>
              <li class="breadcrumb-item active">جديد</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <?php

          			$query = '';

          			if (isset($_GET['page']) && $_GET['page'] == 'Pending') {

          				$query = 'AND RegStatus = 0';

          			}
          			// Select All Users Except Admin

          			$stmt = $con->prepare("SELECT * FROM users $query ORDER BY UserID ASC");

          			// Execute The Statement

          			$stmt->execute();

          			// Assign To Variable

          			$rows = $stmt->fetchAll();

          			if (! empty($rows)) {

          			?>
          					<div class="">
          						<table class="table table-divider table-striped latest_table">
          							<thead class="text-center">
          								<tr>
          									<td>#ID</td>
          									<td>Image</td>
          									<td>Username</td>
          									<td>Email</td>
          									<td>Full Name</td>
          									<td>Registered Date</td>
          									<td>Control</td>
          								</tr>
          							</thead>
          							<tbody>
          							<?php
          								foreach($rows as $row) { ?>
          									<tr>
          										<td><?php echo $row['UserID']; ?>
                              </td>
          										<td>
          											<img width="50px" height="50px"  class="" src="uploads\avatars\<?php echo $row['avatar']; ?>" alt="">
          										</td>
          										<td>
          											<span style="color: <?php echo $row['GroupID'] == 1 ? 'red' : "" ;?>">
          											<?php echo $row['Username']; ?>
          										</span>
          										</td>
          										<td>
          											<?php echo $row['Email']; ?>
          										</td>
          										<td>
          											<?php echo $row['FullName']; ?>
          										</td>
          										<td>
          											<?php echo $row['Date']; ?>
          										</td>
          										<td>
          											<a href="members.php?adminPanel=Edit-mem&userid=<?php echo $row['UserID']; ?>" class="btn btn-default">Edit</a>
          											<a href="members.php?adminPanel=Delete-mem&userid=<?php echo $row['UserID']; ?>" class="btn btn-danger  confirm"> Delete </a>
          											<?php
          											if ($row['RegStatus'] == 0) { ?>
          												<a href="members.php?adminPanel=Activate-mem&userid=<?php echo $row['UserID']; ?>" class="btn btn-primary activate">
          														Activate
          													</a>
          										<?php	} ?>
          										</td>
          									</tr>
          									<?php
          								}
          							?>
          							<tr>
          							</tbody>
          						</table>
          					</div>
          					<a href="members.php?adminPanel=Add-mem" class="btn btn-primary">
          						<span uk-icon="plus"></span> New Member
          					</a>

          			<?php } else { ?>
          				<div class="uk-container">
          					<div class="nice-message">There's No Members To Show</div>
          					<a href="members.php?adminPanel=Add-mem" class="btn btn-primary">
          							<i class="fa fa-plus"></i> New Member
          						</a>
          				</div>

          	<?php		}
          ?>

        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->

<?php
include $templates . 'footer.php';
} else{
header('Location: index.php');
exit();
}
}
ob_end_flush(); // Release The Output
?>
