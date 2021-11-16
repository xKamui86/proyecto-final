$(function(){
    tablas();
});

function tablas (){
    $.ajax({
    url: '../system/datos_revista.php', 
    type: 'POST',
    success: function(res){
        //alert(res);
        var js = JSON.parse(res);
        var tabla;
        for (var i = 0;i < js.length; i++){
            tabla += '<tr><td>' + js[i].id_revista+ '</td><td>'+ js[i].id_autor + '</td><td>' + js[i].titulo_revista + '</td><td>' + js[i].categoria + '</td><td>' + js[i].año_publicacion+ '</td></td>';
       
        }
        
        //alert(tabla);
        $('#tbodys').html(tabla);
    }
    })
}