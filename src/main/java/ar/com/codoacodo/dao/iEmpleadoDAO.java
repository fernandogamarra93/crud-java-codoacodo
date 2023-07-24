package ar.com.codoacodo.dao;
import ar.com.codoacodo.domain.Departamento;
import ar.com.codoacodo.domain.Empleado;

import java.util.List;

public interface iEmpleadoDAO {
	
	// select * from empleados where id = id;
	public Empleado getById(Long id) throws Exception; // devuelve de un id todos los campos 
	
	// cambiamos el array por una lista de java 
	// select * from empleados;
	public List<Empleado> findAll() throws Exception;	// devuelve todos los registros de la tabla departamentos
	
	
	// insert to empleados (campo 1..campo2..campo3) values(newDepto.campo1....newDepto.campoN)
	public void create(Empleado nuevoEmpleado) throws Exception;
	

}
