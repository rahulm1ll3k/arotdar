<?php include('header.php'); ?>

	<?php
	$condition	=	'';
	if(isset($_REQUEST['name_a']) and $_REQUEST['name_a']!=""){
		$condition .= ' AND arot_name LIKE "%'.$_REQUEST['name_a'].'%" ';
	}
	if(isset($_REQUEST['p_arot']) and $_REQUEST['p_arot']!=""){
		$condition .= ' AND arot_phone LIKE "%'.$_REQUEST['p_arot'].'%" ';
	}
	if(isset($_REQUEST['owner_n']) and $_REQUEST['owner_n']!=""){
		$condition .= ' AND arot_owner_name LIKE "%'.$_REQUEST['owner_n'].'%" ';
	}
	if(isset($_REQUEST['ownder_p']) and $_REQUEST['ownder_p']!=""){
		$condition .= ' AND arot_owner_phone LIKE "%'.$_REQUEST['ownder_p'].'%" ';
	}
	$userData = $db->getAllRecords('arot_info','*',$condition,'ORDER BY id DESC');
	?>

   	<div class="container">
   		<br>
		<div class="card">
			<div class="card-header"><i class="fa fa-fw fa-globe"></i> <strong>Browse User</strong> <a href="arot_add.php" class="float-right btn btn-dark btn-sm"><i class="fa fa-fw fa-plus-circle"></i> Add Users</a></div>
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
					<!-- <h5 class="card-title"><i class="fa fa-fw fa-search"></i> Find User</h5> -->

					<?php if (isset($_REQUEST['viewid']) && $_REQUEST['viewid'] != '') {
						$view_user = $db->getOneRecord('arot_info','*','id',$_REQUEST['viewid']);

						?>

						<div class="row">
							<div class="col-md-4 bg-dark d-flex align-items-center rounded-pill shadow">
								<img src="https://fritzing.org/media/fritzing-repo/users/m/michealhuss/images/head-659651_640.png" class="img-fluid" alt="">
							</div>
							<div class="col-md-8">
								<div class="card">
									<div class="card-header"><h5 class="card-title mb-0 text-center">Brightdog</h5></div>
									<div class="card-body">

										<table class="table">
											<thead>
												<tr>
													<th class="text-right" scope="col" colspan="2">More Information</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">Arot Name</th>
													<td>: <?php echo $view_user[0]['arot_name'] ?></td>
												</tr>
												<tr>
													<th scope="row">Arot Phone Number</th>
													<td>: <?php echo $view_user[0]['arot_phone'] ?></td>
												</tr>
												<tr>
													<th scope="row">Arot Owner Name</th>
													<td>: <?php echo $view_user[0]['arot_owner_name'] ?></td>
												</tr>
												<tr>
													<th scope="row">Arot Owner Phone Number</th>
													<td>: <?php echo $view_user[0]['arot_owner_phone'] ?></td>
												</tr>
											</tbody>
										</table>

									</div>
									<div class="card-footer text-muted">
										<!-- <span>2 days ago</span> -->
										<a href="#" class="btn btn-warning rounded-0">Delete User</a>
										<a href="arot.php" class="btn btn-danger rounded-0 float-right">Close Tab</a>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>

 <!--
 <form method="get">
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
</form> 
-->

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
						<td><a href="arot.php?viewid=<?php echo $val['id'] ?>"><?php echo $val['arot_name'];?></a></td>
						<td><?php echo $val['arot_phone'];?></td>
						<td><?php echo $val['arot_owner_name'];?></td>
						<td><?php echo $val['arot_owner_phone'];?></td>
						<td align="center">
							<a href="arot_edit.php?editId=<?php echo $val['id'];?>" class="text-primary"><i class="fa fa-fw fa-edit"></i> Edit</a> | 
							<a href="delete.php?delId=<?php echo $val['id'];?>&delType=arotdar" class="text-danger" onClick="return confirm('Are you sure to delete this user?');"><i class="fa fa-fw fa-trash"></i> Delete</a>
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
