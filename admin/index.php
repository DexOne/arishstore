<?php
ob_start(); // output baffering start

session_start();

if(isset($_SESSION['Username'])) {
  //redirect to dashboard if session set
  header('Location: dashboard.php?adminPanel=Manage-dash');
} else{
$noNav = '';
include 'init.php';
include $templates . 'header.php';


// Check If User Coming From HTTP POST Request
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $user = $_POST['user'];
  $pass = $_POST['pass'];
  $hashed = sha1($pass);

  $state = $con->prepare("SELECT UserID, Username, Password
                          FROM
                            users
                          WHERE
                            Username = ?
                          AND
                            Password = ?
                          AND
                            GroupID = 1
                          LIMIT 1");
  $state->execute(array($user, $hashed));
  $row = $state->fetch();
  $count = $state->rowCount();

  if($count > 0){
    $_SESSION['Username'] = $user;
    $_SESSION['ID'] =  $row['UserID'];
    header('Location: dashboard.php?adminPanel=Manage-dash');

    exit();
  }
}
} // end session else
 ?>


 <div class="login-box">
   <div class="login-logo">
     <a href="/">
       <b> عريش</b>
       ستور
     </a>
   </div>
   <!-- /.login-logo -->
   <div class="card">
     <div class="card-body login-card-body">
       <p class="login-box-msg">Sign in to start your session</p>

       <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
         <div class="input-group mb-3">
           <input name="user" type="text" class="form-control" id="user" placeholder="Admin User Name"  autocomplete="off">
           <div class="input-group-append">
             <div class="input-group-text">
               <span class="fas fa-envelope"></span>
             </div>
           </div>
         </div>
         <div class="input-group mb-3">
           <input name="pass" type="password" class="form-control" id="password" placeholder="Admin Password" autocomplete="new-password">
           <div class="input-group-append">
             <div class="input-group-text">
               <span class="fas fa-lock"></span>
             </div>
           </div>
         </div>
         <div class="row">
           <div class="col-8">
             <div class="icheck-primary">
               <input type="checkbox" id="remember">
               <label for="remember">
                 Remember Me
               </label>
             </div>
           </div>
           <!-- /.col -->
           <div class="col-4">
             <button type="submit" id="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
           </div>
           <!-- /.col -->
         </div>
       </form>

       <!-- /.social-auth-links -->

       <p class="mb-1">
         <a href="#">I forgot my password</a>
       </p>
       <p class="mb-0">
         <a href="register.html" class="text-center">Register a new membership</a>
       </p>
     </div>
     <!-- /.login-card-body -->
   </div>
 </div>
<!-- REQUIRED SCRIPTS -->

<?php include $templates . 'footer.php'; ?>
<?php ob_end_flush(); // Release The Output ?>
