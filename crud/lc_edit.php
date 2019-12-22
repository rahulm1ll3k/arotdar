<?php include_once('config.php');
if(isset($_REQUEST['editId']) and $_REQUEST['editId']!=""){
	$row = $db->getAllRecords('lc_info','*',' AND id="'.$_REQUEST['editId'].'"');
}

if(isset($_REQUEST['submit']) and $_REQUEST['submit']!=""){
	extract($_REQUEST);
	if($lc_number==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=lc_number');
		exit;
	}elseif($lc_date==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=lc_date');
		exit;
	}elseif($border==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=border');
		exit;
	}elseif($importer_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=importer_name');
		exit;
	}elseif($exporter_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=exporter_name');
		exit;
	}elseif($bank_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=bank_name');
		exit;
	}elseif($item==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=item');
		exit;
	}elseif($price_per==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=price_per');
		exit;
	}elseif($total_weight==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=total_weight');
		exit;
	}elseif($amount==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId'].'&issue=amount');
		exit;
	}
	$data = array(
		'lc_number' => $lc_number,
		'lc_date' => $lc_date,
		'border' => $border,
		'importer_name' => $importer_name,
		'exporter_name' => $exporter_name,
		'bank_name' => $bank_name,
		'item' => $item,
		'price_per' => $price_per,
		'total_weight' => $total_weight,
		'amount' => $amount,
	);
	$update = $db->update('lc_info',$data,array('id'=>$editId));
	if($update){
		header('location: lc.php?msg=rus');
		exit;
	}else{
		header('location: lc.php?msg=rnu');
		exit;
	}
}

include('header.php');
?>

   	<div class="container">
		<br>
		<?php
		if(isset($_REQUEST['msg']) and $_REQUEST['msg']=="un"){
			echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User name is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="ue"){
			echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User email is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="up"){
			echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User phone is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="ras"){
			echo	'<div class="alert alert-success"><i class="fa fa-thumbs-up"></i> Record added successfully!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rna"){
			echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> Record not added <strong>Please try again!</strong></div>';
		}
		$importerName = $db->getAllRecords('arot_info','id as arot, arot_name as exImp','','ORDER BY arot_name ASC');
		?>
		<div class="card">
			<div class="card-header"><i class="fa fa-fw fa-plus-circle"></i> <strong>Add User</strong> <a href="lc.php" class="float-right btn btn-dark btn-sm"><i class="fa fa-fw fa-globe"></i> Browse Arot</a></div>








			<div class="card-body">

				<h5 class="card-title">Fields with <span class="text-danger">*</span> are mandatory!</h5>
				<form method="post">

					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>LC Number</label>
								<input type="text" name="lc_number" value="<?php echo $row[0]['lc_number']; ?>"" id="lc_number" class="form-control" placeholder="LC Number">
							</div>
							<div class="form-group">
								<label>LC Date</label>
								<input type="date" name="lc_date" value="<?php echo $row[0]['lc_date']; ?>"" id="lc_date" class="form-control" placeholder="LC Date">
							</div>
							<div class="form-group">
								<label>Border</label>
								<select class="custom-select" name="border" id="border" required>
									<option disabled value="">Choose...</option>
									<?php foreach ($border_list as $borders):
										if ($row[0]['border'] == $borders) {
											echo '<option selected value="'.$borders.'">'.$borders.'</option>';
										}else{
											echo '<option value="'.$borders.'">'.$borders.'</option>';
										}
									endforeach ?>
								</select>
							</div>
							<div class="form-group">
								<label>Bank Name</label>
								<input type="text" name="bank_name" id="bank_name" value="<?php echo $row[0]['bank_name'] ?>" class="form-control" placeholder="Bank Name">
							</div>
							<div class="form-group">
								<label>Total Weight</label>
								<input type="text" name="total_weight" id="total_weight" value="<?php echo $row[0]['total_weight'] ?>" class="form-control" placeholder="Total Weight">
							</div>
						</div>

						<div class="col-sm-6">
							<div class="form-group">
								<label>Item</label>
								<select class="custom-select" name="item" id="item" required>
									<option disabled value="">Choose...</option>
									<?php foreach ($item_list as $key => $items):
										if ($row[0]['item'] == $items) {
											echo '<option selected value="'.$key.'">'.$items.'</option>';
										}else{
											echo '<option value="'.$key.'">'.$items.'</option>';
										}
									endforeach ?>
								</select>
								<!-- <input type="text" name="item" id="item" class="form-control" placeholder="Item"> -->
							</div>
							<div class="form-group">
								<label>Imporeter Name</label>
								<select class="custom-select" name="importer_name" id="importer_name" required>
									<option disabled value="">Choose...</option>
									<?php foreach ($importerName as $arotName) {
										if ($row[0]['importer_name'] == $arotName['arot']) {
											echo '<option selected value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
										}else{
											echo '<option value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
										}
									} ?>
								</select>
								<!-- <input type="text" name="importer_name" id="importer_name" class="form-control" placeholder="Imporeter Name"> -->
							</div>
							<div class="form-group">
								<label>Eexporter Name</label>
								<select class="custom-select" name="exporter_name" id="exporter_name" required>
									<?php foreach ($importerName as $arotName) {
										if ($row[0]['exporter_name'] == $arotName['arot']) {
											echo '<option selected value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
										}else{
											echo '<option value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
										}
									} ?>
								</select>
								<!-- <input type="text" name="exporter_name" id="exporter_name" class="form-control" placeholder="Eexporter Name"> -->
							</div>
							<div class="form-group">
								<label>Price 1/KG</label>
								<input type="text" name="price_per" id="price_per" value="<?php echo $row[0]['price_per']; ?>" class="form-control" placeholder="Price 1/KG">
							</div>
							<div class="form-group">
								<label>Total Amount</label>
								<input type="text" name="amount" id="amount" value="<?php echo $row[0]['amount']; ?>" class="form-control" placeholder="Total Amount">
							</div>

						</div>

						<div class="col-md-6">
							<div class="form-group">
								<a href="lc.php" value="submit" id="submit" class="btn btn-block rounded-0 btn-danger">
									<i class="fas fa-arrow-circle-left"></i> Go Back
								</a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="hidden" name="editId" id="editId" value="<?php echo $_REQUEST['editId']?>">
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-block rounded-0 btn-success"><i class="fa fa-fw fa-edit"></i> Update User</button>
							</div>
						</div>

					</div>
				</form>

			</div>

		</div>
	</div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
</body>
</html>