<nav class="navbar navbar-expand-lg navbar-light nav-style">
  <div class="container-fluid nav-container nav-menu-color">
    <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">CRUD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav gap-4">
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">Inicio</a>
        </li>
        <li class="nav-item">
           <a class="nav-link" href="<%=request.getContextPath()%>/FindAllDepartamentoController">Listado Departamentos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/nuevo.jsp">Nuevo Departamento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/FindAllEmpleadoController">Listado Empleados</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/nuevoEmpleado.jsp">Nuevo Empleado</a>
        </li>
      </ul>
      <div class="d-flex w-75 justify-content-end form-margin"> 
	      <form class="d-flex" action="<%=request.getContextPath()%>/SearchDepartamentoController">
		        <input  name="claveBusqueda"  class="form-control me-2" type="search" placeholder="Buscar Nombre Depto" aria-label="Search">
		        <button class="btn btn-success" type="submit">Buscar</button>
	      </form> 
      </div>
      
    </div>
  </div>
</nav>