$(function() {
  $('table').on('click', '#Seleccionar', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idAlumno = row.find("#idAlumnoModal").text();
  let Nombres = row.find("#Nombres_AModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idAlumno").val(idAlumno);
      $("#nombreAlumno").val(Nombres);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar3', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idAlumno = row.find("#idAlumnoModal").text();
  let Nombres = row.find("#Nombres_AModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idAlumnoM").val(idAlumno);
      $("#nombreAlumnoM").val(Nombres);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar1', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idEmpleadoModal = row.find("#idEmpleadoModal").text();
  let Nombres_EModal = row.find("#Nombres_EModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idEmpleado").val(idEmpleadoModal);
      $("#nombreEmpleado").val(Nombres_EModal);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar4', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idEmpleadoModal = row.find("#idEmpleadoModal").text();
  let Nombres_EModal = row.find("#Nombres_EModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idEmpleadoM").val(idEmpleadoModal);
      $("#nombreEmpleadoM").val(Nombres_EModal);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar2', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idPagosModal = row.find("#idPagosModal").text();
  let idAlumno_PModal = row.find("#idAlumno_PModal").text();
  let DNI_RModal = row.find("#DNI_RModal").text();
  let ConceptoModal = row.find("#ConceptoModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idPagos").val(idPagosModal);
      $("#idAlumno").val(idAlumno_PModal);
      $("#DNI_R").val(DNI_RModal);
      $("#Concepto").val(ConceptoModal);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar5', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idPagosModal = row.find("#idPagosModal").text();
  let idAlumno_PModal = row.find("#idAlumno_PModal").text();
  let DNI_RModal = row.find("#DNI_RModal").text();
  let ConceptoModal = row.find("#ConceptoModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idPagosM").val(idPagosModal);
      $("#idAlumnoM").val(idAlumno_PModal);
      $("#DNI_R").val(DNI_RModal);
      $("#Concepto").val(ConceptoModal);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar6', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idCursoModal = row.find("#idCursoModal").text();
  let Curso_EModal = row.find("#Curso_EModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idCurso").val(idCursoModal);
      $("#nombreCurso").val(Curso_EModal);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar7', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idCursoModal = row.find("#idCursoModal").text();
  let Curso_EModal = row.find("#Curso_EModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idCursoM").val(idCursoModal);
      $("#nombreCursoM").val(Curso_EModal);
    }
  })
  })
})


