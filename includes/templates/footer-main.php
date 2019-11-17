<footer class="hold_footer">
  <div class="row">
    <div class="col-sm-12 col-md-4">
      <div class="single_footer single_footer_address">
        <h4>أقسام رئيسية</h4>
        <ul class="row  hold_latest text-center">

        <?php
        $footer_cat = get_all_rec('*', 'categories', 'parent = 0', 'ID DESC',6);
        foreach ($footer_cat as $cat) { ?>
            <li class="col-sm-12 col-md-6 col-lg-6">
              <?php
              echo "<a  class='prod_a' href='categories.php?pageid=".$cat['ID']."&page_title=".str_replace(' ', '-', $cat['Name'])."'>";
              echo $cat['Name'];
              echo "</a>";
              ?>
            </li>
          <?php  }  ?>
        </ul>

      </div>
    </div>
    <!--- END COL -->
    <div class="col-sm-12 col-md-4">
      <div class="single_footer single_footer_address">
        <h4>أحدث المنتجات</h4>
        <ul class="row hold_latest text-center">
              <?php
              $latest_posts = get_all_rec('*', 'posts', '', 'Post_ID DESC',6);

              foreach ($latest_posts as $post) { ?>
                <li class="col-sm-12 col-md-6 col-lg-6">
                    <a class="prod_a" id="<?php echo $post['Post_ID']; ?>" href="posts.php?postid=<?php echo $post['Post_ID']; ?>">
                        <?php echo $post['Name']; ?>
                    </a>
                </li>
            <?php  } ?>
    </ul>
  </div>
  </div>
  <!--- END COL -->
  <div class="col-sm-12 col-md-4">
    <div class="single_footer single_footer_address text-center">
      <h4>أحدث العروض</h4>
      <p>انتظرو قريبا الكثير من العروض</p>
    </div>

  </div>
  <!--- END COL -->

</div>





<!-- Section: Contact v.3 -->
<section class="contact-section">

<!-- Form with header -->
<div class="card" style="border-radius:0;">

  <!-- Grid row -->
  <form class="row text-center">
    <!-- Grid column -->
    <div class="col-lg-4">

      <div class="card-body contact text-center h-100 white-text">

        <h3 class="my-4 pb-2">معلومات التواصل</h3>
        <ul class="list-unstyled ml-4">
          <li class="contact_li">
            <p><i class="fas fa-map-marker-alt"></i>العريش - شمال سيناء - مصر</p>
          </li>
          <li class="contact_li">
            <p><i class="fas fa-phone"></i>+2 01110282344</p>
          </li>
          <li class="contact_li">
            <p><i class="fas fa-envelope"></i>admin@arishstore.com</p>
          </li>
        </ul>
        <hr class="hr-light my-4">
        <ul class="list-inline text-center list-unstyled">
          <li class="list-inline-item">
            <a class="p-2 fa-lg tw-ic">
              <i class="fab fa-twitter"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="p-2 fa-lg li-ic">
              <i class="fab fa-linkedin-in"> </i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="p-2 fa-lg ins-ic">
              <i class="fab fa-instagram"> </i>
            </a>
          </li>
        </ul>

      </div>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-8">

      <div class="card-body form">

        <!-- Header -->
        <h3 class="mt-4"><i class="fas fa-envelope contact_li_down"></i>تواصل معنا</h3>

        <!-- Grid row -->
        <div class="row">

          <!-- Grid column -->
          <div class="col-md-6">
            <div class="md-form mb-0">
              <input type="text" id="form-contact-name" class="form-control input_con" placeholder="الإسم">
            </div>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-6">
            <div class="md-form mb-0">
              <input type="text" id="form-contact-email" class="form-control input_con" placeholder="البريد الإلكترونى">
            </div>
          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Grid row -->
        <div class="row">

          <!-- Grid column -->
          <div class="col-md-6">
            <div class="md-form mb-0">
              <input type="text" id="form-contact-phone" class="form-control input_con" placeholder="رقم الموبايل">
            </div>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-6">
            <div class="md-form mb-0">
              <input type="text" id="form-contact-company" class="form-control input_con" placeholder="الموضوع">
            </div>
          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

        <!-- Grid row -->
        <div class="row">

          <!-- Grid column -->
          <div class="col-md-12">
            <div class="">
              <textarea style="resize:none;" id="form-contact-message" class="form-control md-textarea input_con text-area" rows="3" placeholder="الرسالة"></textarea>
            </div>
            <div class="text-left">
              <a href="#" class="btn-floating border border-default btn-lg blue">
                إرسال
                <i class="far fa-paper-plane"></i>
              </a>
            </div>
          </div>
          <!-- Grid column -->

        </div>
        <!-- Grid row -->

      </div>

    </div>
    <!-- Grid column -->

  </form>
  <!-- Grid row -->

</div>
<!-- Form with header -->

</section>

<div class="row hold_cont">
  <div  class="col-sm-12 col-md-6 text-center">
    <div class="hold_welc_2">
    <div class="row hold_welc_row">
      <div class="col-sm-12 col-md-6">
    <h4 class="arish_store">
      ماسنجر
    <i class="fab fa-facebook-messenger fa-lg msner"></i>
    </h4>
  </div>
  <div class="col-sm-12 col-md-6">
    <h4 class="arish_store">
      انستجرام
      <i class="fab fa-instagram fa-lg insta"></i>
  </h4>
  </div>
</div>
  </div>
</div>
<div  class="col-sm-12 col-md-6 text-center">
  <div class="hold_welc_2">
  <div class="row hold_welc_row">
      <div class="col-sm-12 col-md-8">
        <input type="email" class="form-control .input_con" placeholder="بريدك الاليكترونى" id="usr">
      </div>
      <div class="col-sm-12 col-md-4">
        <button type="button" class="btn btn-default border">
          سجل الآن
        </button>
      </div>
    </div>
</div>
</div>
</div>

  <!--- END ROW -->
  <div class="row">
    <div class="col-sm-12 hold_copy">
      <p class="copyright">
        جميع الحقوق محفوظة لـ
        @ <a href="#">Arish Store</a>.</p>
    </div>
    <!--- END COL -->
  </div>
  <!--- END ROW -->
</footer>
<!--- END CONTAINER -->
<?php

  // store scripts name into array with variable
  $scripts = array(/*'vue.min', */ 'jquery-3.4.1.min', 'jquery-ui.min','popper', 'bootstrap.min', 'all.min', 'plugins/jquery-slicknav-min', 'plugins/bootstrap-dropdownhover.min','plugins/swiper.min', 'main');

  foreach ($scripts as $val) {
    on_scripts($val);
  }
 ?>


  </body>

  </html>
