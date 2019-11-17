<div class="col-sm-12 latest">

<div class="row text-left col-sm-12 m-auto ho_post_cat shadow p-3 mb-5 bg-white rounded">
<?php
$cat_state = $con->prepare("SELECT
                  categories.ID,categories.Name as cat_name, categories.Description as cat_desc, posts.* FROM posts
                 INNER JOIN categories ON posts.Cat_ID = categories.ID
                 ORDER BY Post_ID DESC LIMIT 1");

$cat_state->execute();
$the_cat = $cat_state->fetchALL();

foreach ($the_cat as $post) {
?>
<div class="col-sm-12 row m-auto post_cat">
  <div class="ho_home_title_latest order_now col-sm-12">

  <span class="home_title_latest checkActive">
    <i class="fas fa-sync-alt fa-lg homepage_icon"></i>
    <?php echo $post['Name']; ?>

  </span>
  </div>
  <div class="col-sm-12 col-md-6">
    <img class="img-responsive img-thumbnail img_span_latest" src="<?php echo empty($post['Image']) ? 'admin/uploads/posts/user.jpg' : 'admin/uploads/posts/' . $post['Image'];?>" alt="">
  </div>
  <div class="col-sm-12 col-md-6 post_title_cat_latest">
    <div id="accordion" class="text-right">
  <div class="">
    <div class="card_head" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          مواصفات المنتج
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
        <p class="latest_desc">
          <?php echo $post['Description']; ?>
        </p>
      </div>
    </div>
  </div>
  <div class="">
    <div class="card_head" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          سعر المنتج
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        <span>
          <?php echo $post['Price'] . ' ' . "<i class='fas fa-dollar-sign' style='font-size:11px !important;'></i>"; ?> جنيه
        </span>
      </div>
    </div>
  </div>
  <div class="">
    <div class="card_head" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          تفاصيل أخرى
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        <span>
          <?php echo $post['cat_name']; ?>
        </span>
      </div>
    </div>
  </div>
</div>

  </div>
  <div class="ho_home_title_latest order_now col-sm-12">
    <button type="button" class="btn btn-danger text-center">
      اطلب العرض الآن
    </button>
  </div>
</div>

<?php } ?>

</div>

</div>
