<?php include_once('config.php');
if(isset($_REQUEST['editId']) and $_REQUEST['editId']!=""){
	$row	=	$db->getAllRecords('arot_info','*',' AND id="'.$_REQUEST['editId'].'"');
}

if(isset($_REQUEST['submit']) and $_REQUEST['submit']!=""){
	extract($_REQUEST);
	if($arot_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=un&editId='.$_REQUEST['editId']);
		exit;
	}elseif($arot_phone==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId']);
		exit;
	}elseif($arot_owner_name==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId']);
		exit;
	}elseif($arot_owner_phone==""){
		header('location:'.$_SERVER['PHP_SELF'].'?msg=ue&editId='.$_REQUEST['editId']);
		exit;
	}
	$data = array(
		'arot_name'=>$arot_name,
		'arot_phone'=>$arot_phone,
		'arot_owner_name'=>$arot_owner_name,
		'arot_owner_phone'=>$arot_owner_phone,
	);
	$update = $db->update('arot_info',$data,array('id'=>$editId));
	if($update){
		header('location: arot.php?msg=rus');
		exit;
	}else{
		header('location: arot.php?msg=rnu');
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
		?>
		<div class="card">
			<div class="card-header"><i class="fa fa-fw fa-plus-circle"></i> <strong>Add User</strong> <a href="arot.php" class="float-right btn btn-dark btn-sm"><i class="fa fa-fw fa-globe"></i> Browse Arot</a></div>
			<div class="card-body">

				<div class="col-sm-6">
					<h5 class="card-title">Fields with <span class="text-danger">*</span> are mandatory!</h5>
					<form method="post">
						<div class="form-group">
							<label>arot_name <span class="text-danger">*</span></label>
							<input type="text" name="arot_name" id="arot_name" class="form-control" value="<?php echo $row[0]['arot_name']; ?>" placeholder="Enter user name" required>
						</div>
						<div class="form-group">
							<label>arot_phone <span class="text-danger">*</span></label>
							<input type="text" name="arot_phone" id="arot_phone" class="form-control" value="<?php echo $row[0]['arot_phone']; ?>" placeholder="Enter user email" required>
						</div>
						<div class="form-group">
							<label>arot_owner_name <span class="text-danger">*</span></label>
							<input type="text" name="arot_owner_name" id="arot_owner_name" class="form-control" value="<?php echo $row[0]['arot_owner_name']; ?>" placeholder="Enter arot_owner_name" required>
						</div>
						<div class="form-group">
							<label>arot_owner_phone <span class="text-danger">*</span></label>
							<input type="text" name="arot_owner_phone" id="arot_owner_phone" class="form-control" value="<?php echo $row[0]['arot_owner_phone']; ?>" placeholder="Enter arot_owner_phone" required>
						</div>
						<div class="form-group">
							<input type="hidden" name="editId" id="editId" value="<?php echo $_REQUEST['editId']?>">
							<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"><i class="fa fa-fw fa-edit"></i> Update User</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
</body>
</html>