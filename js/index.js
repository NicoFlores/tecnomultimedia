

$(document).ready(function(){
//Declaro las variables
$("#formulario-mail").submit(function(e){
var nombre =$("#nombre").val();
var mail =$("#mail").val();
var direc =$("#direc").val();
    $("#nombre2").val(nombre);//Aca le doy valor a las variables #nombre2 #
      $("#mail2").val(mail);//mail2 y #direc2 que son las que aparecen en
        $("#direc2").val(direc);// el mensaje personalizado
        console.log("nombre"+"mail"+"direc");
  e.preventDefault();

  $(".pantalla-gracias").slideDown();//cuando se apreta el boton final del formulario se despliega la pantalla de agradecimiento
  $("#form").hide();


});

$("#callta-boton").click(function(e){// este boton es el CALL TO ACTION
$("#form").slideDown();// indica que al hacer click se despliega el formulario
$("#landing-page").hide();// y se esconde la landing page
});
//cuando se apreta el boton para volver
$("#volver").click (function(e){
$("#form").hide();// se oculta el formulario
$("#landing-page").show();// y se muestra la pagina principal
});


//cuando se apreta el boton para volver al final del agradecimiento
$("#callta-volver").click (function(e){
$("#formulario-mail").trigger("reset"); // se resetea el formulario
$(".pantalla-gracias").slideUp();// se oculta y se resetea la pantalla de agradecimiento
$("#landing-page").show();// se muestra la pagina principal
});

});
