<?php
ob_start(); // Output Buffering Start

session_start();
$pageTitle = 'Dashbaord';
if (isset($_SESSION['Username']) && $_GET['adminPanel'] == 'Manage-dash') {
  include 'init.php';
  include $templates . 'header.php';


  $adminPanel = isset($_GET['adminPanel']) ? $_GET['adminPanel'] : 'Manage';
  if ($adminPanel == 'Manage-dash') {

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
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-gradient-info">
              <span class="info-box-icon"><i class="far fa-bookmark"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">منتجات مفضلة</span>
                <span class="info-box-number">0</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 0%"></div>
                </div>
                <span class="progress-description">
                  منتجات مفضلة 0 من 100
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-gradient-success">
              <span class="info-box-icon"><i class="far fa-thumbs-up"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">اعجابات</span>
                <span class="info-box-number">0</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 0%"></div>
                </div>
                <span class="progress-description">
                  اعجابات 0 من 100
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-gradient-warning">
              <span class="info-box-icon"><i class="far fa-calendar-alt"></i></span>

              <div class="info-box-content">
                  <span class="info-box-text">عروض حصرية</span>
                <span class="info-box-number">0</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 70%"></div>
                </div>
                <span class="progress-description">
                  عروض حصرية 0 من 100
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box bg-gradient-danger">
              <span class="info-box-icon"><i class="fas fa-comments"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">تعليقات</span>
                <span class="info-box-number">0</span>

                <div class="progress">
                  <div class="progress-bar" style="width: 0%"></div>
                </div>
                <span class="progress-description">
                  عدد تعليقاتك 0
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>

        <!-- /.row -->
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">زوار الموقع</h3>
                  <a href="javascript:void(0);">مشاهدة التقرير</a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">0</span>
                    <span>كل الزوار</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="text-success">
                      <i class="fas fa-arrow-up"></i> 0%
                    </span>
                    <span class="text-muted">أخر اسبوع</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="visitors-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> هذا الأسبوع
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> أخر اسبوع
                  </span>
                </div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">مبيعات</h3>
                  <a href="javascript:void(0);">مشاهدة التقرير</a>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">$0</span>
                    <span>كل المبيعات</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
                    <span class="text-success">
                      <i class="fas fa-arrow-up"></i> 0%
                    </span>
                    <span class="text-muted">من اخر شهر</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="sales-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
                  <span class="mr-2">
                    <i class="fas fa-square text-primary"></i> هذا العام
                  </span>

                  <span>
                    <i class="fas fa-square text-gray"></i> أخر عام
                  </span>
                </div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
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
