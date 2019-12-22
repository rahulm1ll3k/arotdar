<?php 

include('header.php');

$condition	=	'';
if(isset($_REQUEST['byarot']) and $_REQUEST['byarot']!=""){
	$condition	.=	' AND lc_name LIKE "%'.$_REQUEST['byarot'].'%" ';
}
if(isset($_REQUEST['byarotphone']) and $_REQUEST['byarotphone']!=""){
	$condition	.=	' AND lc_phone LIKE "%'.$_REQUEST['byarotphone'].'%" ';
}
if(isset($_REQUEST['byowner']) and $_REQUEST['byowner']!=""){
	$condition	.=	' AND lc_owner_name LIKE "%'.$_REQUEST['byowner'].'%" ';
}
if(isset($_REQUEST['byownerphone']) and $_REQUEST['byownerphone']!=""){
	$condition	.=	' AND lc_owner_phone LIKE "%'.$_REQUEST['byownerphone'].'%" ';
}

$userData	=	$db->getAllRecords('lc_info','*',$condition,'ORDER BY id DESC');

?>

   	<div class="container">
   		<br>
		<div class="card">
			<div class="card-header"><i class="fa fa-fw fa-globe"></i> <strong>Browse Lc</strong> <a href="lc_add.php" class="float-right btn btn-dark btn-sm"><i class="fa fa-fw fa-plus-circle"></i> New Lc</a></div>
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
						$view_user = $db->getOneRecord('lc_info','*','id',$_REQUEST['viewid']);
						?>

						<div class="row">
							<div class="col-md-4 bg-dark d-flex align-items-center rounded-pill shadow mb-sm-5 mb-md-0">
								<img src="https://fritzing.org/media/fritzing-repo/users/m/michealhuss/images/head-659651_640.png" class="img-fluid" alt="">
							</div>
							<div class="col-md-8">
								<div class="card">
									<div class="card-header"><h5 class="card-title mb-0 text-center"><?php echo $view_user[0]['lc_number'] ?></h5></div>
									<div class="card-body">

										<table class="table">
											<tbody>

												<tr>
													<th scope="row">LC Number</th>
													<td>: <?php echo $view_user[0]['lc_number'] ?></td>
												</tr>
												<tr>
													<th scope="row">LC Date</th>
													<td>: <?php echo $view_user[0]['lc_date'] ?></td>
												</tr>
												<tr>
													<th scope="row">Border</th>
													<td>: <?php echo $view_user[0]['border'] ?></td>
												</tr>
												<tr>
													<th scope="row">Importer Name</th>
													<td>: <?php echo $view_user[0]['importer_name'] ?></td>
												</tr>
												<tr>
													<th scope="row">Exporter Name</th>
													<td>: <?php echo $view_user[0]['exporter_name'] ?></td>
												</tr>
												<tr>
													<th scope="row">Bank Name</th>
													<td>: <?php echo $view_user[0]['bank_name'] ?></td>
												</tr>
												<tr>
													<th scope="row">Item</th>
													<td>: <?php echo $view_user[0]['item'] ?></td>
												</tr>
												<tr>
													<th scope="row">Price Per</th>
													<td>: <?php echo $view_user[0]['price_per'] ?></td>
												</tr>
												<tr>
													<th scope="row">Total Weight</th>
													<td>: <?php echo $view_user[0]['total_weight'] ?></td>
												</tr>
												<tr>
													<th scope="row">Amount</th>
													<td>: <?php echo $view_user[0]['amount'] ?>/=</td>
												</tr>
											</tbody>
										</table>

									</div>
									<div class="card-footer text-muted">
										<!-- <span>2 days ago</span> -->
										<a href="./delete.php?delId=<?php echo $view_user[0]['id'];?>&delType=lc" class="btn btn-warning rounded-0" onClick="return confirm('Are you sure to delete this user?');">Delete User</a>
										<a href="./lc_edit.php?editId=<?php echo $view_user[0]['id'];?>" class="btn btn-success rounded-0">Edit LC</a>
										<a href="./lc.php" class="btn btn-danger rounded-0 float-right">Close Tab</a>
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
				<label>byarot</label>
				<input type="text" name="byarot" id="byarot" class="form-control" value="<?php echo isset($_REQUEST['byarot'])?$_REQUEST['byarot']:''?>" placeholder="Enter user name">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>byarotphone</label>
				<input type="email" name="byarotphone" id="byarotphone" class="form-control" value="<?php echo isset($_REQUEST['byarotphone'])?$_REQUEST['byarotphone']:''?>" placeholder="Enter user email">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>byowner</label>
				<input type="tel" name="byowner" id="byowner" class="form-control" value="<?php echo isset($_REQUEST['byowner'])?$_REQUEST['byowner']:''?>" placeholder="Enter user phone">
			</div>
		</div>
		<div class="col-sm-2">
			<div class="form-group">
				<label>byownerphone</label>
				<input type="tel" name="byownerphone" id="byownerphone" class="form-control" value="<?php echo isset($_REQUEST['byownerphone'])?$_REQUEST['byownerphone']:''?>" placeholder="Enter user phone">
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
						<th>lc_number</th>
						<th>lc_date</th>
						<th>importer_name</th>
						<th>exporter_name</th>
						<th>item</th>
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
						<td><a href="lc.php?viewid=<?php echo $val['id'] ?>"><?php echo $val['lc_number'];?></a></td>
						<td><?php echo $val['lc_date'];?></td>
						<td><?php echo $val['importer_name'];?></td>
						<td><?php echo $val['exporter_name'];?></td>
						<td><?php echo $item_list[$val['item']]; ?></td>
						<td align="center">
							<small>
								<a href="lc_edit.php?editId=<?php echo $val['id'];?>" class="text-primary"><i class="fa fa-fw fa-edit"></i></a> | 
								<a href="delete.php?delId=<?php echo $val['id'];?>&delType=lc" class="text-danger" onClick="return confirm('Are you sure to delete this user?');"><i class="fa fa-fw fa-trash"></i></a>
							</small>
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
