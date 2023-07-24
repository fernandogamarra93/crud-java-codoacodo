<%@page import="ar.com.codoacodo.domain.Empleado"%>
<%@page import="java.util.List"%>
<!doctype html>
<html lang="es">
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--animated-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <!--logos-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <title>Listado de Empleados</title>
	<link href="style/styles.css" rel="stylesheet"></link>

  </head>
	
	<body>
		<!-- ACA VA EL NAVBAR  include file="navbar.jsp" %> -->
		<div class="bg-ligth">
		 <!-- aca va el navbar.jsp -->
		 <jsp:include page="navbar.jsp"/>
		</div>
		
		<main>
			<div class="container bg-light mt-5">
				<section>
					<h1 style="text-align: center;">Listado de Empleados</h1>
					<table class="table table-striped table-hover">
					  <thead class="table-th">
					    <tr>
					      <th scope="col">DNI</th>
					      <th scope="col">NOMBRE</th>
					      <th scope="col">APELLIDO</th>
					      <th scope="col">DEPARTAMENTO</th>
					   
					    </tr>
					  </thead>
					  <% 
					  	//codigo java
					  	//obtener el listado desde el request
					  	//se guardo bajo el nombre de "departamentos"
					  	List<Empleado> listado = (List<Empleado>)request.getAttribute("listado");
					  %>
					  <tbody>
					   <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
					   <%
					   	for(Empleado  unEmpleado : listado) {
					   %>
					    <tr>
						      <th scope="row"> <%=unEmpleado.getDni()%> </th>
						      <td><%=unEmpleado.getNombre() %></td>
						      <td><%=unEmpleado.getApellido() %></td>
						   
						      <td><%=unEmpleado.getDepto().getNombre() %></td>
					    
					    </tr>
					   <%
					   	}
					   %>
					  </tbody>
					</table>
				</section>
			</div>
		</main>
		
	</body>	
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	

	
</html>