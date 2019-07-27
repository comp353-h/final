
<html>
	<head>
		<title> Bootstrap Tables</title>
		<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="css/bootstrap-table.css" rel="stylesheet">
		<link type="text/css" href="css/font-awesome.css" rel="stylesheet">
</head>
 
<body>

<div class="container">
	<div class="col-md-12">
		<div class="page-header">
			<h1>
				Group H
			</h1>
		</div>
						 
			<div class="panel-body">
				<div class="row">
					<div class="col-md-12">
					 
						<table 	id="table"
			                	data-show-columns="true"
 				                data-height="460">
						</table>
					</div>
				</div>
			</div>				
		</div>

	</div>
</div>
  		
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.js"></script>


<script type="text/javascript">
	
	 var $table = $('#table');
		     $table.bootstrapTable({
			      url: 'list-user.php',
			      search: true,
			      pagination: true,
			      buttonsClass: 'primary',
			      showFooter: true,
			      minimumCountColumns: 2,
			      columns: 
			    [

studentID, firstName, lastName, phone, email, dateOfBirth, studentType, gpa
					      {
					          field: 'ID',title: '#',sortable: true,
					      },
					      {
					          field: 'first',title: 'Firstname',sortable: true,
					      },
					      {
					          field: 'last',title: 'Lastname',sortable: true,
					      },
					      					      {
					          field: 'phone',title: 'Phone',sortable: true,
					      },
					      					      {
					          field: 'email',title: 'Email',sortable: true,
					      },
					      					      {
					          field: 'dateOfBirth',title: 'DOB',sortable: true,
					      },
					      					      {
					          field: 'studentType',title: 'Type',sortable: true,
					      },
					      {
					          field: 'gpa',title: 'gpa',sortable: true,
					      },
				],
 
  			 });

</script>

</body>
</html>





