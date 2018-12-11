$(function() {
  $('table').on('click', '#Rellenar', function(e){
	  e.preventDefault();  
  let row = $(this).closest('tr');
  let idCurso = row.find("#idCurso1").text();
  $.ajax({
    success: function(response)
    {
      $("#idCursoE").val(idCurso);
    }
  })
  })
})
