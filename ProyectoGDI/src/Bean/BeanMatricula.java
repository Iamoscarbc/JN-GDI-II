package Bean;

import util.Bean;

public class BeanMatricula extends Bean{
	String idMatricula;
	String idEmpleado;
	String nombreEmpleado;
	String idAlumno;
	String nombreAlumno;
	String idCurso;
	String nombreCurso;
	String idPagos;
	String DNI_R;
	String Fecha_Matricula;
	
	public BeanMatricula() {
		super();
	}

	public BeanMatricula(String idMatricula, String idEmpleado,String nombreEmpleado, String idAlumno,String nombreAlumno,String idCurso, String nombreCurso,
			String idPagos,	String DNI_R, String fecha_Matricula) {
		super();
		this.idMatricula = idMatricula;
		this.idEmpleado = idEmpleado;
		this.nombreEmpleado= nombreEmpleado;
		this.idAlumno = idAlumno;
		this.nombreAlumno = nombreAlumno;
		this.idCurso = idCurso;
		this.nombreCurso = nombreCurso;
		this.idPagos = idPagos;
		this.DNI_R =DNI_R;
		Fecha_Matricula = fecha_Matricula;
	}

	public String getIdMatricula() {
		return idMatricula;
	}

	public void setIdMatricula(String idMatricula) {
		this.idMatricula = idMatricula;
	}

	public String getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(String idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public String getNombreEmpleado() {
		return nombreEmpleado;
	}

	public void setNombreEmpleado(String nombreEmpleado) {
		this.nombreEmpleado = nombreEmpleado;
	}

	public String getIdAlumno() {
		return idAlumno;
	}

	public void setIdAlumno(String idAlumno) {
		this.idAlumno = idAlumno;
	}

	public String getNombreAlumno() {
		return nombreAlumno;
	}

	public void setNombreAlumno(String nombreAlumno) {
		this.nombreAlumno = nombreAlumno;
	}
	
	public String getIdCurso() {
		return idCurso;
	}

	public void setIdCurso(String idCurso) {
		this.idCurso = idCurso;
	}

	public String getNombreCurso() {
		return nombreCurso;
	}

	public void setNombreCurso(String nombreCurso) {
		this.nombreCurso = nombreCurso;
	}

	public String getIdPagos() {
		return idPagos;
	}

	public void setIdPagos(String idPagos) {
		this.idPagos = idPagos;
	}

	public String getDNI_R() {
		return DNI_R;
	}

	public void setDNI_R(String dNI_R) {
		DNI_R = dNI_R;
	}

	public String getFecha_Matricula() {
		return Fecha_Matricula;
	}

	public void setFecha_Matricula(String fecha_Matricula) {
		Fecha_Matricula = fecha_Matricula;
	}

}
