$(function() {
  $('table').on('click', '#Editar', function(e){
	  e.preventDefault(); 
  let row = $(this).closest('tr');
  let idEmpleado = row.find("#idEmpleado1").text();
  let nombreEmpleado = row.find("#nombreEmpleado1").text();
  let idAlumno = row.find("#idAlumno1").text();
  let nombreAlumno = row.find("#nombreAlumno1").text();
  let idCurso = row.find("#idCurso1").text();
  let nombreCurso = row.find("#nombreCurso1").text();
  let idPagos = row.find("#idPagos1").text();
  let DNI_R = row.find("#DNI_R1").text();
  let Concepto = row.find("#Concepto1").text();
  let Fecha_Matricula = row.find("#Fecha_Matricula1").text();
  let idMatricula = row.find("#idMatricula1").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idEmpleadoM").val(idEmpleado);
      $("#nombreEmpleadoM").val(nombreEmpleado);      
      $("#idAlumnoM").val(idAlumno);
      $("#nombreAlumnoM").val(nombreAlumno);
      $("#idCursoM").val(idCurso);
      $("#nombreCursoM").val(nombreCurso);
      $("#idPagosM").val(idPagos);
      $("#DNI_RM").val(DNI_R);
      $("#ConceptoM").val(Concepto);
      $("#Fecha_MatriculaM").val(Fecha_Matricula);
      $("#idMatricula").val(idMatricula);
    }
  })
  })
})