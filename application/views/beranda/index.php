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
							<li ><a href="<?php echo site_url(''); ?>">Home</a></li>
							<li><a href="<?php echo site_url('#kontak'); ?>">Kontak</a></li>
							<li class="active"><a href="<?php echo site_url('#'); ?>">Diagnosa</a></li>
							
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container -->
			</nav>
	
			<!-- Section: intro -->
			<br></br>
			<br></br>
			  <!-- Full Width Column -->
			  <div class="content-wrapper">
				<div class="container">
				  <!-- Main content -->
					<div class="col-md-offset-1 col-md-10">
						<?php $this->load->view($view)?>
					</div>
				</div><!-- /.container -->
			  </div><!-- /.content-wrapper -->
			</div><!-- ./wrapper -->
        </div><!-- ./wrapper -->
	<!-- add new calendar event modal -->
	<!-- page script -->
	<!-- jQuery 2.0.2 -->
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
										<p><a href="http://google.com/">Klik Kontak</a> by Deny </p>
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