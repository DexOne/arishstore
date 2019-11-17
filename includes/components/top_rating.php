<div class="col-sm-12">

<div class="text-left col-sm-12">

<span class="home_title">
  أفضل التقييمات
   <i class="fas fa-award homepage_icon"></i>
</span>
</div>
<div class="row col-sm-12 m-auto">
<?php
        $cat_state = $con->prepare("SELECT
                           categories.ID,categories.Name as cat_name, posts.* FROM posts
                           INNER JOIN categories ON posts.Cat_ID = categories.ID

                           ORDER BY Rating DESC LIMIT 4");

        $cat_state->execute();
        $the_cat = $cat_state->fetchALL();

      foreach ($the_cat as $post) {
         ?>
     <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="post_title_cat">
         <h2>
          <a id="<?php echo $post['Post_ID']; ?>" href="posts.php?postid=<?php echo $post['Post_ID']; ?>" class="checkActive">
             <?php echo $post['Name']; ?>
           </a>
         </h2>
       </div>
       <div class="">
         <img class="img-responsive img_span" src="<?php echo empty($post['Image']) ? 'admin/uploads/posts/user.jpg' : 'admin/uploads/posts/' . $post['Image'];?>" alt="">
       </div>
         <div class="overlay">
           <div class="date">
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
