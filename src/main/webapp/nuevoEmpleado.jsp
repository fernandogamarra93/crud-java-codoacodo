<!Doctype html>
<html>
		<head>
		 <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Nuevo Empleado</title>
		 <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">  
		<link href="style/styles.css" rel="stylesheet"></link>
	</head>
	<body>
	   <div class="bg-light">
	   		<jsp:include page="navbar.jsp"/>
	   </div>
		
		
		<main class="container mt-5">
			<h1 style="text-align: center">Nuevo Empleado</h1>
			
			<div class="row mt-5" style="display: flex;justify-content: center;">
				<div class="form-container">
					<form class="col g-3 needs-validation" 
						action="<%=request.getContextPath()%>/CreateEmpleadoController"
						method="POST">
					  <div class="col-md-12">
					    <label for="validationCustom01" class="form-label">
					    	DNI
					    </label>
					    <input type="text"
					    	name="dni" 
					    	class="form-control" 
					    	id="validationCustom01" 
					    	value="" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  <div class="col-md-12">
					    <label for="validationCustom02" class="form-label">Nombre</label>
					    <input type="text"
					    	name="nombre" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  <div class="col-md-12">
					    <label for="validationCustom02" class="form-label">Apellido</label>
					    <input type="text"
					    	name="apellido" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  <div class="col-md-4">
					    <label for="validationCustom02" class="form-label">Dpto id</label>
						<select id="select1" name="dpto_id" class="form-control" required>
							<option value="12">Contaduria</option>
							<option value="14">Informatica</option>
							<option value="15">Gestion</option>
							<option value="16">Comunicacion</option>
							<option value="37">Desarrollo</option>
							<option value="77">Investigacion</option>
						</select>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  <div class="col-12 mt-3">
					    <button class="btn btn-primary" type="submit">Nuevo</button>
					  </div>
					</form>
				</div>
			</div>
		</main>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>