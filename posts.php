<?php

	/*
	================================================
	== Profile Page
	== You Can Edit your Profile From Here
	================================================
	*/

ob_start(); // Output Buffering Start
session_start();
global $session_user;
$pageTitle = 'Posts';
// get init app core
include 'init.php';
// get header
$hook_up->inc_header();


// Check If Get Request userid Is Numeric & Get Its Integer Value

			$postid = isset($_GET['postid']) && is_numeric($_GET['postid']) ? intval($_GET['postid']) : 0;

			// Select All Data Depend On This ID

			$stmt = $con->prepare("SELECT posts.*, users.Username, users.avatar, categories.Name AS cat_name
                              FROM posts
                              INNER JOIN users
                              ON posts.Member_ID = users.UserID
															INNER JOIN categories
															ON posts.Cat_ID =  categories.ID
                              WHERE Post_ID = ?");

			// Execute Query

			$stmt->execute(array($postid));

			// Fetch The Data

			$posts = $stmt->fetch();

			// The Row Count

			$count = $stmt->rowCount();

			// If There's Such ID Show The Form
			if ($count > 0) {

				if(isset($session_user)) {

				?>
  <main class="container">
    <div class="text-center row">
			<div class="col-sm-12">
				<h1 class="post_title">
						<?php echo $posts['Name']; ?>
						</h1>
			</div>
      <div class="col-sm-12 col-md-6">

				<div class="row">
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li class="active_tab"><a href="#tab-1">وصف المنتج</a></li>
							<li class=""><a href="#tab-2">السعر</a></li>
							<li class=""><a href="#tab-3">التقييم</a></li>
						</ul>
						<div class="tab-content">
							<div id="tab-1" class="tab-pane active_tab">
									<p class="post-content text-center">
										<?php	echo $posts['Description']; ?>
									</p>
							</div>
							<div id="tab-2" class="tab-pane">
								<div class="col-sm-12">
									<p class="post_rating">
										<?php echo 'السعر : <span>' . $posts['Price'] . ' <i class="fas fa-dollar-sign" ></i></span>'; ?>
									</p>
								</div>
							</div>
							<div id="tab-3" class="tab-pane">
								<div class="col-sm-12">
									<p class="post_rating">
										<?php echo 'تقييم : <span>' . $posts['Rating'] . ' <i class="fas fa-star" ></i></span>'; ?>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="row post_hold_info">
							<div class="col-md-6 post_info">
								<img width="70" src="admin/uploads/avatars/<?php echo $posts['avatar']; ?>" alt="">
								<h3>
								<a class="user_av">
									<?php echo $posts['Username']; ?>
								</a>
								</h3>
							</div>
							<div class="col-md-6">
								<p class="post_info">
									<?php echo $posts['Status'] == 1 ? "تم نشره فى" : ""; ?>
									<span><?php echo date("M Y", strtotime($posts['Add_Date']));?></span>
								</p>
								<p class="post_info">
									<?php echo $posts['cat_name']; ?>
								</p>
							</div>
						</div>
					</div>

				</div>

      </div>
      <div class="col-sm-12 col-md-6">
				<div class="img-responsive img-thumbnail post_img" style="background-image: url('admin/uploads/posts/<?php echo $posts['Image']; ?>');"></div>
      </div>
			<div class="col-sm-12 tags">
				<?php
				$post_tags = explode(',', $posts['tags']);
				echo 'كلمات مميزة :  ';
				foreach ($post_tags as $tag) {
					$tag = str_replace(' ', '', $tag);
					$tag = strtolower($tag);
					echo '<a href="tags.php?tags='.$tag.'">' . $tag .'</a>' . ' - ';
				}
						 ?>
			</div>
		</div>
    <?php include $templates . 'comments/comments.php' ?>
  </main>
  <!-- End Comments Section -->
  <?php
	$hook_up->inc_footer('main', '-');
	}
} else {
  echo '<div class="container">
    			<div class="nice-message">There\'s No Posts To Show</div>
  			</div>';
 }

ob_end_flush(); // Release The Output ?>
