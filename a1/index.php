<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
		<meta name="author" content="Mark K. Jowett, Ph.D.">
    <link rel="icon" href="favicon.ico">

		<title>Lis4381 - Assignment1</title>		
		<?php include_once("../css/include_css.php"); ?>			
  </head>

  <body>

		<?php include_once("../global/nav.php"); ?>
		
		<div class="container">
			<div class="starter-template">
				<div class="page-header">
					<?php include_once("global/header.php"); ?>	
				</div>
				<p class="text-justify">
					<strong>Description:</strong> * Install ampps, Install JDK, Install Android Studio, Create my first app
				</p>

				<h4>Java Hello world</h4>
				<img src="img/java_hello_world.png" class="img-responsive center-block" alt="JDK Installation">

				<h4>Android Studio Installation</h4>
				<img src="img/my_first_app.png" class="img-responsive center-block" alt="Android Studio Installation">

				<h4>PHP config</h4>
				<img src="img/php_conf.png" class="img-responsive center-block" alt="AMPPS Installation">
				
				<?php include_once "global/footer.php"; ?>

			</div> <!-- starter-template -->
    </div> <!-- end container -->

		<!-- Bootstrap JavaScript
				 ================================================== -->
		<!-- Placed at end of document so pages load faster -->		
		<?php include_once("../js/include_js.php"); ?>			
  </body>
</html>
