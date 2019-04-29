<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Sistem Pakar Diagnosa Penyakit Sapi</title>
	
		<!-- css -->
		<link href="<?php echo base_url('asset/startbootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css">
		<link href="<?php echo base_url('asset/startbootstrap/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('asset/plugins/cubeportfolio/css/cubeportfolio.min.css'); ?>">
		<link href="<?php echo base_url('asset/startbootstrap/css/nivo-lightbox.css'); ?>" rel="stylesheet" />
		<link href="<?php echo base_url('asset/startbootstrap/css/nivo-lightbox-theme/default/default.css'); ?>" rel="stylesheet" type="text/css" />
		<link href="<?php echo base_url('asset/startbootstrap/css/owl.carousel.css'); ?>" rel="stylesheet" media="screen" />
		<link href="<?php echo base_url('asset/startbootstrap/css/owl.theme.css'); ?>" rel="stylesheet" media="screen" />
		<link href="<?php echo base_url('asset/startbootstrap/css/animate.css'); ?>" rel="stylesheet" />
		<link href="<?php echo base_url('asset/startbootstrap/css/style.css'); ?>" rel="stylesheet">

		<!-- boxed bg -->
		<link id="bodybg" href="<?php echo base_url('asset/startbootstrap/bodybg/bg1.css'); ?>" rel="stylesheet" type="text/css" />
		<!-- template skin -->
		<link id="t-colors" href="<?php echo base_url('asset/startbootstrap/color/default.css'); ?>" rel="stylesheet">


	</head>

	<body id="page-top" data-spy="scroll" data-target=".navbar-custom">


		<div id="wrapper">
	
			<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
				<div class="top-area" style="padding: 2px;">
				</div>
				<div class="container navigation">
		
					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
							<i class="fa fa-bars"></i>
						</button>
						<a class="navbar-brand" href="index.php">
							<img src="<?php echo base_url('asset/startbootstrap/img/logo.png'); ?>" alt="" width="150" height="40" />
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<?php echo site_url('#'); ?>">Home</a></li>
							<li><a href="<?php echo site_url('#kontak'); ?>">Kontak</a></li>
							<li><a href="<?php echo site_url('diagnosa'); ?>">Diagnosa</a></li>
							
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>
	
	
			<!-- Section: intro -->
			<section id="intro" class="intro" <?php if ( isset($display)){ echo 'style="display:none"'; }?> >
				<div class="intro-content">
					<div class="container">
						<div class="row">
							<div class="col-lg-6">
								<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
									<h2 class="h-ultra">Sistem Pakar Diagnosa</h2>
								</div>
								<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
									<h4 class="h-light">Penyakit Sapi </h4>
								</div>
								<div class="well well-trans">
									<div class="wow fadeInRight" data-wow-delay="0.1s">
										<ul class="lead-list">
											<li style="margin-bottom: 4px;"><span class="fa fa-check fa-2x icon-success"></span> <span class="list" style="width: 90%;font-size: 13px;"><strong>Definisi Pakar</strong><br />Pakar adalah orang yang memiliki pengetahuan, penilaian, pengalaman, metode khusus, serta kemampuan untuk menerapkan bakat ini dalam memberi nasihat dan memecahkan masalah.</span></li>
											<li style="margin-bottom: 4px;"><span class="fa fa-check fa-2x icon-success"></span> <span class="list" style="width: 90%;font-size: 13px;"><strong>Sapi Potong</strong><br />lorem ipsum panas di kost nyari dingin es minum beli dapt kopi ada es minum</span></li>
											<li style="margin-bottom: 0px;"><span class="fa fa-check fa-2x icon-success"></span> <span class="list" style="width: 90%;font-size: 13px;"><strong>Sapi Perah</strong><br />Diambil susu nya dengan diperah jadi dancow.</span></li>
										</ul>
									</div>
								</div>


							</div>
							<div class="col-lg-6">
								<?php
								if($this->uri->segment(1)=="login"){
									?>
									<div class="form-wrapper">
										<div class="wow fadeInRight animated" data-wow-duration="2s" data-wow-delay="0.2s" style="visibility: visible; animation-duration: 2s; animation-delay: 0.2s; animation-name: fadeInRight;">
						
											<div class="panel panel-skin">
												<div class="panel-heading">
													<h3 class="panel-title"><span class="fa fa-pencil-square-o"></span> Login</h3>
												</div>
												<div class="panel-body">
													<form role="form" class="lead" method="post" action="<?php echo site_url('login/login_ok'); ?>">
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="form-group">
																	<label>Username</label>
																	<input type="text" name="Username" id="Username" class="form-control input-md">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-xs-12 col-sm-12 col-md-12">
																<div class="form-group">
																	<label>Password</label>
																	<input type="password" name="Password" id="Password" class="form-control input-md">
																</div>
															</div>
														</div>

														<input type="submit" value="Submit" class="btn btn-skin btn-block btn-lg">
										
														<p class="lead-footer"></p>
									
													</form>
												</div>
											</div>				
						
										</div>
									</div>
									<?php									
								}else{
									?>
									<div class="wow fadeInUp"  data-wow-duration="2s" data-wow-delay="0.2s">
										<img src="<?php echo base_url('asset/startbootstrap/img/dokter.png'); ?>" class="img-responsive" alt="" />
									</div>
									<?php
								}
								?>
							</div>					
						</div>		
					</div>
				</div>		
			</section>


			<!--/Load File View-->
			
			<footer>
	
				<div class="sub-footer" id="kontak">
					<div class="container">
						<div class="row">
							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="wow fadeInLeft" data-wow-delay="0.1s">
									<div class="text-left">
										<p>&copy;Copyright 2018 - Universitas Amikom Yk.</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-6">
								<div class="wow fadeInRight" data-wow-delay="0.1s">
									<div class="text-right">
										<p ><a class="active" href="http://facebook.com/">Klik Kontak</a> SISSAPI</p>
									</div>
									
								</div>
							</div>
						</div>	
					</div>
				</div>
			</footer>

		</div>
		<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

		<!-- Core JavaScript Files -->
		<script src="<?php echo base_url('asset/startbootstrap/js/jquery.min.js'); ?>"></script>	 
		<script src="<?php echo base_url('asset/startbootstrap/js/bootstrap.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/jquery.easing.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/wow.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/jquery.scrollTo.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/jquery.appear.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/stellar.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/plugins/cubeportfolio/js/jquery.cubeportfolio.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/owl.carousel.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/nivo-lightbox.min.js'); ?>"></script>
		<script src="<?php echo base_url('asset/startbootstrap/js/custom.js'); ?>"></script>

	</body>

</html>