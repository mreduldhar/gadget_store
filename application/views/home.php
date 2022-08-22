<div class="logo_products" style="background: url(<?=base_url()?>asset/images/pattern-08.jpg);">
	<div class="container" style="line-height: 1;">
		<div class="w3ls_logo_products_left1">
		</div>
		<div class="w3ls_logo_products_left">
			<h1 style="color: #96588A"><small><strong>Gadget Store</strong></small></h1>
		</div>
		<div class="w3l_search">
			<form action="<?=base_url()?>Products/search" method="post">
				<input type="search" name="search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>

		<div class="clearfix"> </div>
	</div>
</div>
<!-- //navigation -->
<!-- main-slider -->
<ul id="demo1">
	<li>
		<img src="<?=base_url()?>asset/images/background.png" alt="" />
		<!--Slider Description example-->
		<!-- <div class="slide-desc">
			<h3 style="color:white;font-weight: 700;text-shadow: 1px 1px 3px black;">buy our innovative Electronics gadgets</h3>
		</div> -->
	</li>
	<li>
		<img src="<?=base_url()?>asset/images/shopo.jpg" alt="" />
		<div class="slide-desc">
			<h3 style="color:white;font-weight: 700;text-shadow: 1px 1px 3px black;">all Products Are Now available on OnLine</h3>
		</div>
	</li>

</ul>
<!-- //main-slider -->
<!-- //top-header and slider -->
<!-- top-brands -->
<div class="top-brands" style="background: url(<?=base_url()?>asset/images/pattern-08.jpg);">
	<div class="container">
		<h2 style="margin-top: -2%">Our Products</h2>
		<div class="grid_3 grid_5">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">

				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">

						<div class="agile_top_brands_grids" style="margin-top: -8%" >
							<?php foreach ($products as $product) { ?>
							<div class="col-md-3 top_brand_left">
								<div class="hover14 column">
									<div class="agile_top_brand_left_grid">
										<div class="agile_top_brand_left_grid1">
											<figure>
												<div class="snipcart-item block">
													<div class="snipcart-thumb">
														<a href="<?=base_url()?>Products/details/<?php echo $product['id']; ?>"><img title=" " alt=" " src="<?=base_url()?>img/<?=$product['image']?>"></a>
														<p><?php echo $product['title']; ?></p>
														<h4>৳<?php echo $product['price']; ?></h4>
													</div>
													<div class="snipcart-details top_brand_home_details">
														<form action="#" method="post">
															<fieldset>

																<input type="hidden" name="quantity" value="1" class="form-control quantity" id="<?php echo $product['id']; ?>" />

																<input type="button" name="add_cart" class="button add_cart" data-productname="<?php echo $product['title']; ?>" data-price="<?php echo $product['price']; ?>" data-productid="<?php echo $product['id']; ?>" value="Add to cart" /></input>
															</fieldset>
														</form>
													</div>
												</div>
											</figure>
										</div>

									</div>
								</div>
							</div>
							<?php } ?>
							<div class="clearfix"> </div>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
<center>	<a href="<?=base_url().'Products/shop'?>" class="btn btn-info btn-lg text-center" style="background: #96588A">VIEW ALL</a></center>
</div>
</div>

<div class="brands">
	<div class="container">
		<h3 style="color: white;">We Have Partnered With</h3>
		<div class="brands-agile">

			<div class="col-md-4 w3layouts-brand">
				<div class="brands-w3l" style="background: white;">
					<center><img class="img-responsive" src="<?=base_url()?>asset/images/wisherce-logo.png"></center>
					<p><a target="_blank" href="http://wisherce.com/">wisherce.com</a></p>
				</div>
			</div>

			<div class="col-md-4 w3layouts-brand">
				<div class="brands-w3l" style="background: white;">
					<center><img class="img-responsive" src="<?=base_url()?>asset/images/efaz.png"></center>
					<p><a target="_blank" href="http://efaaz.com">efaaz.com</a></p>
				</div>
			</div>

			<div class="col-md-4 w3layouts-brand">
				<div class="brands-w3l" style="background: white;">
					<center><img class="img-responsive" src="<?=base_url()?>asset/images/mvs.png"></center>
					<p><a target="_blank" href="http://myvirtualstaffs.com">myvirtualstaffs.com</a></p>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>

<style>
@media (max-width: 660px){
.brands-w3l p a{
	font-size: 12px;
}
}
</style>


	</div>
</div>
<!--//brands-->
<!-- new -->
