<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MedUSA</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.6.21/dist/css/uikit.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400;500&display=swap" rel="stylesheet">
	<?php wp_head(); ?>
</head>
<body>
	<div class="upper-menu">	
		<div class="uk-container uk-container-center">
			<div class="uk-grid">
				<div class="uk-width-1-1 uk-text-right">
					<a href="">LOGIN</a><span uk-icon="icon: search; ratio: 1"></span>
				</div><!-- col -->
			</div><!-- grid -->
		</div><!-- container -->
	</div><!-- sessão -->
	<div class="uk-container uk-container-center top-menu">
		<div class="uk-grid">
			<div class="uk-width-1-3">
				<img src="https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/medusa_logo.png">
			</div><!-- col -->
			<div class="uk-width-2-3">
				<button class="btn-menu uk-button uk-button-default uk-margin-small-right" type="button" uk-toggle="target: #offcanvas-usage"><span uk-icon="icon: menu; ratio: 1"></span></button>

				<div id="offcanvas-usage" uk-offcanvas>
				    <div class="uk-offcanvas-bar">

				        <button class="uk-offcanvas-close" type="button" uk-close></button>

				        <ul class="mobile-menu">
							<li><a href="">ABOUT</a></li>
							<li><a href="">SERVICE</a></li>
							<li type="button">PACKAGES</li>
							<div uk-dropdown="mode: click">
								<ul>
									<li><a href="">GOLD</a></li>
									<li><a href="">PLATINUM</a></li>
									<li><a href="">SILVER</a></li>
								</ul>
							</div>
							<li><a href="">SOFTWARE</a></li>
							<li><a href="">CASES STUDIES</a></li>
							<li><a href="">CONTACT US</a></li>
							<li><a href="">BLOG</a></li>
						</ul>

				    </div>
				</div>

				<ul class="lista-menu">
					<li><a href="">ABOUT</a></li>
					<li><a href="">SERVICE</a></li>
					<li><a href="">SOFTWARE</a></li>
					<li><a href="">CONTACT US</a></li>
				</ul>
			</div><!-- col -->
		</div><!-- grid -->
	</div>

