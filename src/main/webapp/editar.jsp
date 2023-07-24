<%@page import="ar.com.codoacodo.domain.Departamento"%>
<%
	Departamento d = (Departamento)request.getAttribute("departamento"); // levanto el departamento que viene del controller
%>

<!Doctype html>
<html>
		<head>
		 <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Editar Departamento</title>
		 <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">  
		<link href="style/styles.css" rel="stylesheet"></link>
	</head>
	<body>
	   <div class="bg-light">
	   		<jsp:include page="navbar.jsp"/>
	   </div>
		
		
		<main class="container mt-5">
			
			<h1 style="text-align: center;">Editar Departamento</h1>
			
			<div class="row mt-3" style="display: flex;justify-content: center;">
				<div class="form-container">
					<form class="row g-3 needs-validation" 
						action="<%=request.getContextPath()%>/UpdateDepartamentoController"
						method="POST">
					  <div class="col-md-0">
					    <input type="hidden" name="id" value="<%=d.getId()%>">
					    
					  </div>
					  <div class="col-md-12">
					    <label for="validationCustom02" class="form-label">Nombre</label>
					    <input type="text"
					    	name="nombre" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="<%=d.getNombre()%>" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  <div class="col-md-12">
					    <label for="validationCustom02" class="form-label">Presupuesto</label>
					    <input type="number"
					    	name="presupuesto" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="<%=d.getPresupuesto()%>" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					 
					  <div class="col-12 mt-3">
					    <button class="btn btn-primary" type="submit">Editar</button>
					  </div>
					</form>
				</div>
			</div>
		</main>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>