package Factory;

import DAO.DaoAlumno;
import DAO.DaoCurso;
import DAO.DaoEmpleado;
import DAO.DaoMatricula;
import DAO.DaoPago;

public abstract class FactoryDao {
	
	public abstract DaoAlumno getDao_Alumno();
	public abstract DaoCurso getDao_Curso();
	public abstract DaoEmpleado getDao_Empleado();
	public abstract DaoMatricula getDao_Matricula();
	public abstract DaoPago getDao_Pago();
}
