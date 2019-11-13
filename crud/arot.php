<?php include('header.php'); ?>
	
	<div class="bg-light border-bottom shadow-sm sticky-top">
		<div class="container">
			<header class="blog-header py-1">
				<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand text-muted p-0 m-0" href="https://learncodeweb.com"><img src='https://learncodeweb.com/wp-content/uploads/2019/01/logo.png' alt='LearnCodeWeb'></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-17" class="active nav-item"><a title="Home" href="https://learncodeweb.com/" class="nav-link">Home</a></li>
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-16" class="nav-item"><a title="Web Development" href="https://learncodeweb.com/learn/web-development/" class="nav-link">Web Development</a></li>
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-558" class="nav-item"><a title="PHP" href="https://learncodeweb.com/learn/php/" class="nav-link">PHP</a></li>
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-14" class="nav-item"><a title="Bootstrap" href="https://learncodeweb.com/learn/bootstrap-framework/" class="nav-link">Bootstrap</a></li>
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-559" class="nav-item"><a title="WordPress" href="https://learncodeweb.com/learn/wordpress/" class="nav-link">WordPress</a></li>
							<li itemscope="itemscope" itemtype="https://www.schema.org/SiteNavigationElement" id="menu-item-15" class="nav-item"><a title="Snippets" href="https://learncodeweb.com/learn/snippets/" class="nav-link">Snippets</a></li>
						</ul>
						<form method="get" action="https://learncodeweb.com" class="form-inline my-2 my-lg-0">
							<div class="input-group input-group-md">
								<input type="text" class="form-control search-width" name="s" id="search" value="" placeholder="Search..." aria-label="Search">
								<div class="input-group-append">
									<button type="submit" class="btn btn-primary" id="searchBtn"><i class="fa fa-search"></i></button>
								</div>
							</div>
						</form>
					</div>
				</nav>
			</header>
		</div> <!--/.container-->
	</div>
	
	<?php
	$condition	=	'';
	if(isset($_REQUEST['name_a']) and $_REQUEST['name_a']!=""){
		$condition	.=	' AND arot_name LIKE "%'.$_REQUEST['name_a'].'%" ';
	}
	if(isset($_REQUEST['p_arot']) and $_REQUEST['p_arot']!=""){
		$condition	.=	' AND arot_phone LIKE "%'.$_REQUEST['p_arot'].'%" ';
	}
	if(isset($_REQUEST['owner_n']) and $_REQUEST['owner_n']!=""){
		$condition	.=	' AND arot_owner_name LIKE "%'.$_REQUEST['owner_n'].'%" ';
	}
	if(isset($_REQUEST['ownder_p']) and $_REQUEST['ownder_p']!=""){
		$condition	.=	' AND arot_owner_phone LIKE "%'.$_REQUEST['ownder_p'].'%" ';
	}
	$userData	=	$db->getAllRecords('arot_info','*',$condition,'ORDER BY id DESC');
	?>
   	<div class="container">
		<h1><a href="https://learncodeweb.com/php/php-crud-in-bootstrap-4-with-search-functionality/">PHP CRUD in Bootstrap with search and pagination</a></h1>
		<div class="card">
			<div class="card-header"><i class="fa fa-fw fa-globe"></i> <strong>Browse User</strong> <a href="add-users.php" class="float-right btn btn-dark btn-sm"><i class="fa fa-fw fa-plus-circle"></i> Add Users</a></div>
			<div class="card-body">
				<?php
				if(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rds"){
					echo	'<div class="alert alert-success"><i class="fa fa-thumbs-up"></i> Record deleted successfully!</div>';
				}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rus"){
					echo	'<div class="alert alert-success"><i class="fa fa-thumbs-up"></i> Record updated successfully!</div>';
				}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rnu"){
					echo	'<div class="alert alert-warning"><i class="fa fa-exclamation-triangle"></i> You did not change any thing!</div>';
				}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rna"){
					echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> There is some thing wrong <strong>Please try again!</strong></div>';
				}
				?>
				<div class="col-sm-12">
					<h5 class="card-title"><i class="fa fa-fw fa-search"></i> Find User</h5>
 <!-- 					<form method="get">
	<div class="row">
		<div class="col-sm-2">
			<div class="form-group">
				<label>name_a</label>
				<input type="text" name="name_a" id="name_a" class="form-control" value="<?php echo isset($_REQUEST['name_a'])?$_REQUEST['name_a']:''?>" placeholder="Enter user name">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>p_arot</label>
				<input type="email" name="p_arot" id="p_arot" class="form-control" value="<?php echo isset($_REQUEST['p_arot'])?$_REQUEST['p_arot']:''?>" placeholder="Enter user email">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>owner_n</label>
				<input type="tel" name="owner_n" id="owner_n" class="form-control" value="<?php echo isset($_REQUEST['owner_n'])?$_REQUEST['owner_n']:''?>" placeholder="Enter user phone">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>ownder_p</label>
				<input type="tel" name="ownder_p" id="ownder_p" class="form-control" value="<?php echo isset($_REQUEST['ownder_p'])?$_REQUEST['ownder_p']:''?>" placeholder="Enter user phone">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>&nbsp;</label>
				<div>
					<button type="submit" name="submit" value="search" id="submit" class="btn btn-primary"><i class="fa fa-fw fa-search"></i> Search</button>
					<a href="<?php echo $_SERVER['PHP_SELF'];?>" class="btn btn-danger"><i class="fa fa-fw fa-sync"></i> Clear</a>
				</div>
			</div>
		</div>
	</div>
</form> -->
				</div>
			</div>
		</div>
		<hr>
		
		<div>
			<table id="myTable" class="table table-striped table-bordered">
				<thead>
					<tr class="bg-primary text-white">
						<th>Sr#</th>
						<th>Arot Name</th>
						<th>Phone Number</th>
						<th>Owner Name</th>
						<th>Owner Phone Number</th>
						<th class="text-center">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$s	=	'';
					foreach($userData as $val){
						$s++;
					?>
					<tr>
						<td><?php echo $s;?></td>
						<td><?php echo $val['arot_name'];?></td>
						<td><?php echo $val['arot_phone'];?></td>
						<td><?php echo $val['arot_owner_name'];?></td>
						<td><?php echo $val['arot_owner_phone'];?></td>
						<td align="center">
							<a href="edit-users.php?editId=<?php echo $val['id'];?>" class="text-primary"><i class="fa fa-fw fa-edit"></i> Edit</a> | 
							<a href="delete.php?delId=<?php echo $val['id'];?>" class="text-danger" onClick="return confirm('Are you sure to delete this user?');"><i class="fa fa-fw fa-trash"></i> Delete</a>
						</td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div> <!--/.col-sm-12-->
		
	</div>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

	<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

	<script type="text/javascript">
/*
		$(document).ready( function () {
			$('#myTable').DataTable();
		} );
*/
	</script>

    
</body>
</html>
