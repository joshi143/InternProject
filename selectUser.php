<?php 
	include('db_connect.php');

	$sql = 'SELECT c_name, c_balance,c_id FROM customer_details ORDER BY c_id';

	// get the result set (set of rows)
	$result = mysqli_query($conn, $sql);

	// fetch the resulting rows as an array
	$customers = mysqli_fetch_all($result, MYSQLI_ASSOC);

	// free the $result from memory (good practise)
	mysqli_free_result($result);

	// close connection
	mysqli_close($conn);

?>

<!DOCTYPE html>
<style>
	.center{
		padding-top:10px;
		padding-bottom:10px;
	}
	</style>
<html>
<head>
	<title>Select User | Banking System</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php include('navbar.php'); ?>
	<section>
		<div class="wrapper">
			<form action="singleUser.php" method="POST">
				<div class="container" style="margin: 70px auto">
				<table class="highlight">
					<tr>
						<th>Name</th>
						<th>Account Number</th>
						<th>Balance(INR)</th>
					</tr>
					<?php 
						foreach($customers as $customer) {
							echo "<tr><td> ".$customer['c_name']."</td><td>".$customer['c_id']."</td><td> ".$customer['c_balance']."</td></tr>";
						}
					?>
				</table>
			</div>

			<div class="container col s12" style="margin: 20px auto">

				<label>Select a user</label>
				<select class="browser-default" name="name">
					<option value="" disabled selected>Choose your option</option>
					<?php 
						foreach($customers as $customer) {
							echo "<option value='".$customer['c_name']."'>".$customer['c_name']."</option>";
						}
					?> 
			</select>
			
			</div>
			<div class="center">
				<button type="submit" class="btn-1">Submit</button>
				<a href="index.php" class="btn-1">Home</a> 
			</div>
			
			</form>
		</div>
	</section>
	<?php include('footer.php'); ?>
</body>

</html>