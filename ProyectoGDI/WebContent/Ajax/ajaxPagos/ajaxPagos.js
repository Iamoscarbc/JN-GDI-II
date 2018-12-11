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
      $("#Nombre_Alumno").val(Nombres);
    }
  })
  })
})

$(function() {
  $('table').on('click', '#Seleccionar1', function(e){
	  e.preventDefault(); 
 let row = $(this).closest('tr');
  let idAlumno = row.find("#idAlumnoModal").text();
  let Nombres = row.find("#Nombres_EModal").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idAlumnoM").val(idAlumno);
      $("#Nombre_Alumno").val(Nombres);
    }
  })
  })
})

