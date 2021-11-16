$(function(){
    tablas();
});

function tablas (){
    $.ajax({
    url: '../system/datos_libros.php', 
    type: 'POST',
    success: function(res){
        //alert(res);
        var js = JSON.parse(res);
        var tabla;
        for (var i = 0;i < js.length; i++){
            tabla += '<tr><td>' + js[i].id+ '</td><td>'+ js[i].Autor + '</td><td>' + js[i].Titulo + '</td><td>' + js[i].Categoria + '</td><td>' + js[i].Editorial + '</td><td>' + js[i].año_publicacion+ '</td></td>';
       
        }
        
        //alert(tabla);
        $('#tbodys').html(tabla);
    }
    })
}