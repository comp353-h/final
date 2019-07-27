
<html>
	<head>
		<title> Bootstrap Tables</title>
		<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="css/bootstrap-table.css" rel="stylesheet">
		<link type="text/css" href="css/font-awesome.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>


<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Page 3</a></li>
        </ul>
    </div>
</nav>

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

					      {
					          field: 'studentID',title: 'ID',sortable: true,
					      },
					      {
					          field: 'firstName',title: 'First Name',sortable: true,
					      },
					      {
					          field: 'lastName',title: 'Last Name',sortable: true,
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
					          field: 'gpa',title: 'GPA',sortable: true,
					      },
				],
 
  			 });

</script>

</body>
</html>





