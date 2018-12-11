$(function() {
  $('table').on('click', '#Editar', function(e){
	  e.preventDefault();  
  let row = $(this).closest('tr');
  let idCurso = row.find("#idCurso1").text();
  let Curso = row.find("#Curso1").text();
  
  $.ajax({
    success: function(response)
    {
      $("#idCurso").val(idCurso);
      $("#Curso").val(Curso);
    }
  })
  })
})
