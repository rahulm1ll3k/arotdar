<?php include_once('config.php');?>
<!doctype html>
<html lang="en-US" xmlns:fb="https://www.facebook.com/2008/fbml" xmlns:addthis="https://www.addthis.com/help/api-spec"  prefix="og: http://ogp.me/ns#" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>PHP CRUD in Bootstrap with search and pagination</title>
	
	<link rel="shortcut icon" href="https://demo.learncodeweb.com/favicon.ico">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	



	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>

	<div class="bg-light border-bottom shadow-sm sticky-top">
		<div class="container">
			<header class="blog-header py-1">
				<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand text-muted p-0 m-0" href="https://learncodeweb.com"><img src='https://learncodeweb.com/wp-content/uploads/2019/01/logo.png' alt='LearnCodeWeb'></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li itemscope="itemscope" class="<?php echo (basename($_SERVER['PHP_SELF']) == 'index.php') ? 'active':''; ?> nav-item">
								<a title="Home" href="index.php" class="nav-link">Home</a>
							</li>
							<li itemscope="itemscope" class="<?php echo (basename($_SERVER['PHP_SELF']) == 'arot.php') ? 'active':''; ?> nav-item">
								<a title="Home" href="arot.php" class="nav-link">Arot</a>
							</li>
							<li itemscope="itemscope" class="<?php echo (basename($_SERVER['PHP_SELF']) == 'lc.php') ? 'active':''; ?> nav-item">
								<a title="Home" href="lc.php" class="nav-link">All LC</a>
							</li>
							<li itemscope="itemscope" class="<?php echo (basename($_SERVER['PHP_SELF']) == 'truck.php') ? 'active':''; ?> nav-item">
								<a title="Home" href="truck.php" class="nav-link">Truck Info</a>
							</li>
						</ul>
					</div>
				</nav>
			</header>
		</div> <!--/.container-->
	</div>
