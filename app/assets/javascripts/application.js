//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require popper
//= require bootstrap
//= require font_awesome5
//= require toastr

toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-bottom-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "50",
  "hideDuration": "500",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
};


$( document ).on('turbolinks:load', function() {
  $('#dtFornecedor').DataTable( {
    "language": {
      "decimal":        "",
      "emptyTable":     "Nenhum fornecedor disponível na tabela.",
      "info":           "Mostrando _START_ até _END_ de _TOTAL_ fornecedores",
      "infoEmpty":      "Sem fornecedores disponíveis.",
      "infoFiltered":   "(de um total de _MAX_ fornecedores)",
      "infoPostFix":    "",
      "thousands":      ",",
      "lengthMenu":     "Mostrar _MENU_ fornecedores",
      "loadingRecords": "Carregando...",
      "processing":     "Processando...",
      "search":         "Procurar fornecedor:",
      "zeroRecords":    "Nenhum fornecedor encontrado",
      "paginate": {
        "first":      "Prim.",
        "last":       "Últ.",
        "next":       "Próx.",
        "previous":   "Ant."
      },
    },
  });

  $('#dtConta').DataTable( {
    "language": {
      "decimal":        "",
      "emptyTable":     "Nenhuma conta disponível na tabela.",
      "info":           "Mostrando _START_ até _END_ de _TOTAL_ contas",
      "infoEmpty":      "Sem contas disponíveis.",
      "infoFiltered":   "(de um total de _MAX_ contas)",
      "infoPostFix":    "",
      "thousands":      ",",
      "lengthMenu":     "Mostrar _MENU_ contas",
      "loadingRecords": "Carregando...",
      "processing":     "Processando...",
      "search":         "Procurar conta:",
      "zeroRecords":    "Nenhuma conta encontrado",
      "paginate": {
        "first":      "Prim.",
        "last":       "Últ.",
        "next":       "Próx.",
        "previous":   "Ant."
      },
    },
  });
});