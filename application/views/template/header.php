<!DOCTYPE html>
<html>
<head>
	<title>Gadget Store</title>
	<link rel="icon" href="<?=base_url()?>asset/images/favicon.png" type="image/png">
	<link href="<?=base_url()?>asset/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<?=base_url()?>asset/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<?=base_url()?>asset/css/font-awesome.css" rel="stylesheet"> 
	<!-- <script src="<?=base_url()?>asset/js/jquery-1.11.1.min.js"></script> -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript" src="<?=base_url()?>asset/js/move-top.js"></script>
	<script type="text/javascript" src="<?=base_url()?>asset/js/easing.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
</head>

<body>
	<!-- header -->
	<div>
		<div class="">
			<div id="myHeader">
				<div class="navigation-agileits" id="undefined-sticky-wrapper" class="sticky-wrapper" >
					<div class="container">
						<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 

							<?php 		
							$categories =  $this->db->select('*')->from('categories')->order_by('id','asc')->get()->result_array();
							?>
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li><a href="<?=base_url()?>"><strong>Gadget Store</strong></a></li>
								</ul>
								<ul class="nav navbar-nav" style="float: right !important;text-transform: uppercase;">
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Categories<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														
														<?php foreach ($categories as $key => $category) { ?>
														<li><a href="<?=base_url().'Products/index/'.$category['id'];?>/list/"><?php echo $category['name']; ?></a></li>
														<?php } ?>
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>

									<li><a href="<?=base_url().'Products/shop'?>">Shop</a></li>
								
									<li><a href="<?=base_url()?>Contact">Contact</a></li>
									
									

									<?php if (!$this->session->userdata('userid')) { ?>
									<li><a href="<?=base_url()?>register"> Sign up </a></li>
									<li><a href="<?=base_url()?>Login">Login</a></li>
									<?php } else{ ?>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="padding:5px;"><img src="<?= base_url('img/user.png') ?>" alt="" height="40px"><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">

														<li><a href="<?=base_url();?>Order/my_account">My Orders</a></li>
														<li><a href="<?=base_url();?>Logout">Logout</a></li>
														
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<?php } ?>
									
									<li><button class="w3view-cart" type="submit" name="submit" data-toggle="modal" data-target="#myModal"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i><span  class="badge cart_itemss" id="cart_itemsss"><?php if (!empty($total_cart_items)) {
										echo $total_cart_items;
									} ?></span></button></li>


								</ul>


							</div>
						</nav>
								<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content" >
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>

										<div id="cart_details">
									
										</div>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>




			<div id="order_modal" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<!-- <h4 class="modal-title">Congratulations!</h4> -->
						</div>
						<div class="modal-body">
							<p> <?php  
							if($this->session->flashdata('order')){ echo $this->session->flashdata('order'); }
							?></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<style>
	.cart_itemss{
		background: #0B2F56;
		margin-top: -4px;
		font-size: 10px;
		position: absolute;
		margin-left: -3px;
	}

	@media only screen and (max-width: 600px) {
  #cart_details {
    width: 50%;
  }
}
</style>