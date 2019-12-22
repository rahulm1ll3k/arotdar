<?php include_once('header.php');

include_once('config.php');
if(isset($_REQUEST['submit']) and $_REQUEST['submit']!=""){
	extract($_REQUEST);
	if($arot_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=un');
		exit;
	}elseif($arot_phone==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=up');
		exit;
	}elseif($arot_owner_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue');
		exit;
	}elseif($arot_owner_phone==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue');
		exit;
	}else{
		
		$userCount = $db->getQueryCount('arot_info','id');
		//if($userCount[0]['total']<20){
			$data = array(
				'arot_name'=>$arot_name,
				'arot_phone'=>$arot_phone,
				'arot_owner_name'=>$arot_owner_name,
				'arot_owner_phone'=>$arot_owner_phone,
			);
			$insert	= $db->insert('arot_info',$data);
			if($insert){
				header('location:arot.php?msg=ras');
				exit;
			}else{
				header('location:arot.php?msg=rna');
				exit;
			}
/*		}else{
			header('location:'.$_SERVER['PHP_SELF'].'?msg=dsd');
			exit;
		}*/
	}
}
?>
	

   	<div class="container my-5">

		<h1>New Arot Information</h1>

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

		}elseif(isset($_REQUEST['msg']) and $_REQUEST['msg']=="dsd"){

			echo	'<div class="alert alert-danger"><i class="fa fa-exclamation-triangle"></i> Please delete a user and then try again <strong>We set limit for security reasons!</strong></div>';

		}

		?>

		<div class="card">

			<div class="card-header">
				<i class="fa fa-fw fa-plus-circle"></i> 
				<strong>Add Arot</strong> 
				<a href="arot.php" class="float-right btn btn-dark btn-sm">
					<i class="fa fa-fw fa-globe"></i> Browse Arot
				</a>
			</div>

			<div class="card-body">

				<div class="col-sm-6">

					<h5 class="card-title">Fields with <span class="text-danger">*</span> are mandatory!</h5>

					<form method="post">

						<div class="form-group">
							<label>Arot Name <span class="text-danger">*</span></label>
							<input type="text" name="arot_name" id="arot_name" class="form-control" placeholder="Enter Arot name" required>
						</div>

						<div class="form-group">
							<label>Arot Owner Name <span class="text-danger">*</span></label>
							<input type="text" name="arot_owner_name" id="arot_owner_name" class="form-control" placeholder="Enter Arot name" required>
						</div>

						<div class="form-group">
							<label>Arot Phone <span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="arot_phone" id="arot_phone" placeholder="Enter arot phone">
						</div>

						<div class="form-group">
							<label>Arot Owner Phone <span class="text-danger">*</span></label>
							<input type="text" class="form-control" name="arot_owner_phone" id="arot_owner_phone" placeholder="Enter arot owner phone">
						</div>

						<div class="form-group">
							<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i class="fa fa-fw fa-plus-circle"></i> Add Arot</button>
						</div>

					</form>

				</div>

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