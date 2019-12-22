<?php include_once('header.php');

include_once('config.php');
if(isset($_REQUEST['submit']) and $_REQUEST['submit']!=""){
	extract($_REQUEST);
	if($lc_number==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=un&issue=lc_number');
		exit;
	}elseif($lc_date==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=lc_date');
		exit;
	}elseif($border==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=border');
		exit;
	}elseif($importer_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=importer_name');
		exit;
	}elseif($exporter_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=exporter_name');
		exit;
	}elseif($bank_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=bank_name');
		exit;
	}elseif($item==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=item');
		exit;
	}elseif($price_per==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=price_per');
		exit;
	}elseif($total_weight==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=total_weight');
		exit;
	}elseif($amount==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up&issue=amount');
		exit;
	}else{

		$userCount	=	$db->getQueryCount('lc_info','id');
		//if($userCount[0]['total']<20){
			$data	=	array(
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
			$insert	=	$db->insert('lc_info',$data);
			if($insert){
				header('location:lc.php?msg=ras');
				exit;
			}else{
				header('location:lc.php?msg=rna');
				exit;
			}

		/*
		}else{
			header('location:'.$_SERVER['PHP_SELF'].'?msg=dsd');
			exit;
		}
		*/
	}
}
$importerName = $db->getAllRecords('arot_info','id as arot, arot_name as exImp','','ORDER BY arot_name ASC');
?>

   	<div class="container my-5">

		<h1>New Arot Information</h1>

		<?php
		if(isset($_REQUEST['msg']) and $_REQUEST['msg']=="un"){
			echo '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User name is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="ue"){
			echo '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User email is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="up"){
			echo '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> User phone is mandatory field!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="ras"){
			echo '<div class="alert alert-success"><i class="fa fa-thumbs-up"></i> Record added successfully!</div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="rna"){
			echo '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> Record not added <strong>Please try again!</strong></div>';
		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="dsd"){
			echo '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> Please delete a user and then try again <strong>We set limit for security reasons!</strong></div>';
		}
		?>

		<div class="card">

			<div class="card-header">
				<i class="fa fa-fw fa-plus-circle"></i> 
				<strong>Add Lc</strong> 
				<a href="lc.php" class="float-right btn btn-dark btn-sm">
					<i class="fa fa-fw fa-globe"></i> Browse LC
				</a>
			</div>

			<div class="card-body">

				<h5 class="card-title">Fields with <span class="text-danger">*</span> are mandatory!</h5>
				<form method="post">

					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>LC Number</label>
								<input type="text" name="lc_number" id="lc_number" class="form-control" placeholder="LC Number">
							</div>
							<div class="form-group">
								<label>LC Date</label>
								<input type="date" name="lc_date" id="lc_date" class="form-control" placeholder="LC Date">
							</div>
							<div class="form-group">
								<label>Border</label>
								<select class="custom-select" name="border" id="border" required>
									<option selected disabled value="">Choose...</option>
									<option value="Benapole-Petropole">Benapole-Petropole</option>
									<option value="Burimari-Chengrabandha">Burimari-Chengrabandha</option>
									<option value="Tomabil-Dauki">Tomabil-Dauki</option>
								</select>
							</div>
							<div class="form-group">
								<label>Bank Name</label>
								<input type="text" name="bank_name" id="bank_name" class="form-control" placeholder="Bank Name">
							</div>
							<div class="form-group">
								<label>Total Weight</label>
								<input type="text" name="total_weight" id="total_weight" class="form-control" placeholder="Total Weight">
							</div>
						</div>

						<div class="col-sm-6">
							<div class="form-group">
								<label>Item</label>
								<select class="custom-select" name="item" id="item" required>
									<option selected disabled value="">Choose...</option>
									<option value="onion">Onion (পেঁয়াজ)</option>
									<option value="spice">Spice (মসলা)</option>
									<option value="chili">Chili (মরিচ)</option>
									<option value="garlic">Garlic (রসুন)</option>
								</select>
								<!-- <input type="text" name="item" id="item" class="form-control" placeholder="Item"> -->
							</div>
							<div class="form-group">
								<label>Imporeter Name</label>
								<select class="custom-select" name="importer_name" id="importer_name" required>
									<option selected disabled value="">Choose...</option>
									<?php foreach ($importerName as $arotName) {
										echo '<option value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
									} ?>
								</select>
								<!-- <input type="text" name="importer_name" id="importer_name" class="form-control" placeholder="Imporeter Name"> -->
							</div>
							<div class="form-group">
								<label>Eexporter Name</label>
								<select class="custom-select" name="exporter_name" id="exporter_name" required>
									<?php foreach ($importerName as $arotName) {
										echo '<option value="'.$arotName['arot'].'">'.$arotName['exImp'].'</option>';
									} ?>
								</select>
								<!-- <input type="text" name="exporter_name" id="exporter_name" class="form-control" placeholder="Eexporter Name"> -->
							</div>
							<div class="form-group">
								<label>Price 1/KG</label>
								<input type="text" name="price_per" id="price_per" class="form-control" placeholder="Price 1/KG">
							</div>
							<div class="form-group">
								<label>Total Amount</label>
								<input type="text" name="amount" id="amount" class="form-control" placeholder="Total Amount">
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
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-block rounded-0 btn-success"><i class="fa fa-fw fa-plus-circle"></i> Create LC</button>
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
	<script src="https://cdn.jsdelivr.net/jquery.caret/0.1/jquery.caret.js"></script>
	<script src="https://www.solodev.com/_/assets/phone/jquery.mobilePhoneNumber.js"></script>

</body>

</html>