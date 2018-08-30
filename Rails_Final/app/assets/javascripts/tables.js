var iextops =  'https://api.iextrading.com/1.0/tops'
$(document).ready(function(){
  $('#most_active_table').DataTable({
       "processing" : true,
       "ajax" : {
           "url" : iextops,
           dataSrc : ''
       },
       "columns" : [
        {"data" : "symbol"},
        {"data" : "securityType"},
        {"data" : "marketPercent"},
        {"data" : "lastSalePrice"},
       ]
   });
})
