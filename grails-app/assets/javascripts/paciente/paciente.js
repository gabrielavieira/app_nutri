var salvarPreCadastro;

window.onload = function()
{
    jQuery(document).delegate( "#btnSalvarPreCadastro", "click", salvarPreCadastro );

    carregaDatepicker();
    $("#inputUploadArquivo").fileinput();

    jQuery( document ).ajaxStop( function()
    {
        carregaDatepicker();
        $("#inputUploadArquivo").fileinput();
    });
};

salvarPreCadastro = function () {
    jQuery.ajax
    ({
        url: "/paciente/save",
        type: "POST",
        data : $( '#formNovo' ).find( 'input,select,textarea' ).serialize(),
        success: function ( data ) {
            $('#conteudo').html( data );
        }
    });
};