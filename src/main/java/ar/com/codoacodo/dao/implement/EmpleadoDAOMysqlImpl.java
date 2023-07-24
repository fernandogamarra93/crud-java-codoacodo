package ar.com.codoacodo.dao.implement;

import ar.com.codoacodo.dao.iDepartamentoDAO;
import ar.com.codoacodo.dao.iEmpleadoDAO;
import ar.com.codoacodo.db.AdministradorDeConexiones;
import ar.com.codoacodo.domain.Departamento;
import ar.com.codoacodo.domain.Empleado;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

// la interface List tiene una serie de metodos que son 
// add(elemento)
//remove(elemento)
// me permite trabajar como si fueran vectores dinamicamente como en js, dependiendo de la memoria



// en la clase que creamos, heredamos de una interface, la interfaceDAO que tiene los
//metodos para interactuar con la base
public class EmpleadoDAOMysqlImpl implements iEmpleadoDAO {

	@Override
	public Empleado getById(Long id)  throws Exception{
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
		String sql = "select * from empleados where id = " + id;
	   
		Statement statement  = connection.createStatement();
		
		//3 - obtengo el resulSet
		ResultSet resultset = statement.executeQuery(sql);
		// El resultset devuelve un registro de una tabla 
		
	     // primero verifico si hay datos 
		
		if (resultset.next()){
			// obtengo el dato del campo id
			Long dni = resultset.getLong("dni");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			Long idDpto = resultset.getLong("dpto_id");
			iDepartamentoDAO dptoDAO = new DepartamentoDAOMysqlImpl();
			Departamento dpto = dptoDAO.getById(idDpto);
					
					
			return new Empleado(dni,nombreBd,apellidoBd,dpto);
			
		}
		cerrar(connection);
		return null; // si no hay resultset entonces no devuelve nada
	}

	@Override
	public List<Empleado> findAll() throws Exception {
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
	    String sql = "select * from empleados";
			   
		Statement statement  = connection.createStatement();
				
		//3 - obtengo el resulSet
		ResultSet resultset = statement.executeQuery(sql);
		// El resultset devuelve un registro de una tabla 
				
	     // primero verifico si hay datos 
		    // creo una lista de empleados
			List<Empleado> empleados = new ArrayList<Empleado>();	
			
			// mientras encontremos resultados de la base 
			while (resultset.next()){
				// obtengo el dato del campo id
				Long dni = resultset.getLong("dni");
				String nombreBd = resultset.getString("nombre");
				String apellidoBd = resultset.getString("apellido");
				Long idDpto = resultset.getLong("dpto_id");
				// creamos un empleado y lo agregamos a la lista 
				iDepartamentoDAO dptoDAO = new DepartamentoDAOMysqlImpl();
				Departamento dpto = dptoDAO.getById(idDpto);
				
				Empleado e = new Empleado(dni,nombreBd,apellidoBd,dpto);
				empleados.add(e);
					
			}
			cerrar(connection);
		   // devolvemos empleados		
		   return empleados; //
	}


	@Override
	public void create(Empleado nuevoEmpleado) throws Exception {
		
        
		//-1 necesito la conection a la base
		Connection connection = AdministradorDeConexiones.getConnection();
		//2 - arma el statement
		 String sql = "insert into empleados (dni, nombre, apellido,dpto_id) values (?,?,?,?)" ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		 statement.setLong(1,nuevoEmpleado.getDni());
		 statement.setString(2,nuevoEmpleado.getNombre());
		 statement.setString(3,nuevoEmpleado.getApellido());
		 
		 Departamento dpto = nuevoEmpleado.getDepto();
		 
		 statement.setLong(4,dpto.getId());
		//3 -devuelve un entero devuelve 1 o 0, pero no hace falta confirmar para este caso 
		 statement.execute();
		 
		 ResultSet res = statement.getGeneratedKeys(); // RETORNA LA KEY QUE SE GENERO
		 if (res.next()) {
			 System.out.println("Se creo el departamento correctamente");
		 }
		 cerrar(connection);
	}

	
	private void cerrar(Connection con) throws Exception{
		con.close();
	}


}
