<?php
ob_start(); // output baffering start
session_start();
$pageTitle = "Home Page";
include 'init.php';
global $current_page, $user_info;
// get header
$hook_up->inc_header(); ?>
<!-- Slider main container -->
<div class="swiper-container text-center">
  <div class="swiper-wrapper">

  <?php
    $cat_state = $con->prepare("SELECT
                       categories.ID,categories.Name as cat_name, posts.* FROM posts
                       INNER JOIN categories ON posts.Cat_ID = categories.ID

                       ORDER BY Rating DESC LIMIT 5");

    $cat_state->execute();
    $the_cat = $cat_state->fetchALL();

    foreach ($the_cat as $post) {
       ?>

           <div class="swiper-slide img-responsive img_prod" style="background-image: url('<?php echo empty($post['Image']) ? 'admin/uploads/posts/user.jpg' : 'admin/uploads/posts/' . $post['Image'];?>')" alt="">

           <div class="overlay_prod">
           <h2 class="prod_name">
             <a href="posts.php?postid=<?php echo $post['Post_ID']; ?>">
             <?php echo $post['Name']; ?>
            </a>
         </h2>

           <span class="prod_span">
             <?php echo $post['cat_name']; ?>
           </span>

           <span class="prod_span">
             <?php echo $post['Rating'] . ' ' . "<i class='fas fa-star' style='font-size:11px !important;'></i>"; ?>
           </span>
         </div>
         </div>

        <?php } ?>
      </div>
</div>
<div class="container">
  <div class="row">
    <?php
    // arr to store homepage sections title
    $homepage_sec = array('top_rating', 'top_commented', 'latest_posts', 'random_posts');
    // loop through homepage sections
    foreach ($homepage_sec as $sec) { include($hook_up->component($sec, true)); }

    ?>
  </div>


</div>
  <!-- end container -->
  <?php
  $hook_up->inc_footer('main', '-');
  // 'main', '-'
  ob_end_flush(); // Release The Output
?>
