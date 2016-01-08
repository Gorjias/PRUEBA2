<script type="text/javascript">
jQuery(function($) {

    $(document).ready(function(){

          if ('<?=$CI->session->flashdata('mensajeOK')?>') {  
            pintar_msg('<?=$CI->session->flashdata('mensajeOK')?>', 'OK');
          }
          if ('<?=$CI->session->flashdata('mensajeKO')?>') {  
            pintar_msg('<?=$CI->session->flashdata('mensajeKO')?>', 'KO');
          }
          if ('<?=$CI->session->flashdata('mensajeWarning')?>') { 
            pintar_msg('<?=$CI->session->flashdata('mensajeWarning')?>', 'Warning');
          }
    });


  
})


        function pintar_msg (mensaje, mensajeType) {

          if (mensajeType == 'OK') {  
            var titulo = 'Operación realizada correctamente';
            var classMensaje = 'gritter-success';
          }
          if (mensajeType == 'KO') {  
            var titulo = 'Ha sucedido un error';
            var classMensaje = 'gritter-error';
          }
          if (mensajeType == 'Warning') { 
            var titulo = '¡ Atención !';
            var classMensaje = 'gritter-warning';
          }

          if (mensaje) {
            
                    //gritter-light
                    $.gritter.add({
                      // (string | mandatory) the heading of the notification
                      title: titulo,
                      // (string | mandatory) the text inside the notification
                      text: mensaje,
                      class_name: classMensaje
                    });
          };
        }
</script>