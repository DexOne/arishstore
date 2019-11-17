<div class="col-sm-12 random">


<div class="ho_home_title_latest col-sm-12">

<span class="home_title_latest">
  عشوائى
  <i class="fas fa-random homepage_icon"></i></span>
</div>
<div class="row text-left col-sm-12">
<?php
        $cat_state = $con->prepare("SELECT
                           categories.ID,categories.Name as cat_name, posts.* FROM posts
                           INNER JOIN categories ON posts.Cat_ID = categories.ID

                           ORDER BY rand() DESC LIMIT 1");

        $cat_state->execute();
        $the_cat = $cat_state->fetchALL();

      foreach ($the_cat as $post) {
         ?>
         <div class="col-sm-12 row m-auto">
           <div class="col-sm-12 col-md-6">
             <img class="img-responsive img_span_latest" src="<?php echo empty($post['Image']) ? 'admin/uploads/posts/user.jpg' : 'admin/uploads/posts/' . $post['Image'];?>" alt="">
           </div>
           <div class="col-sm-12 col-md-6 post_title_cat_latest">
             <h2>
              <a id="<?php echo $post['Post_ID']; ?>" href="posts.php?postid=<?php echo $post['Post_ID']; ?>" class="checkActive">
                 <?php echo $post['Name']; ?>
               </a>
             </h2>
             <p class="text-center latest_desc">
               <?php echo $post['Description']; ?>
             </p>
             <div class="order_now">
             <button type="button" class="btn btn-danger text-center">
               اطلب العرض الآن
             </button>
             </div>
             <div class="price">
               <span>
                 <?php echo $post['cat_name']; ?>
               </span>
               <span>
                 <?php echo $post['Price'] . ' ' . "<i class='fas fa-dollar-sign' style='font-size:11px !important;'></i>"; ?>
               </span>
             </div>
           </div>
         </div>


       <?php } ?>

     </div>

   </div>
