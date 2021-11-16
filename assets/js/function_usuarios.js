$(function(){
    tabla();
});

function tabla (){
    $.ajax({
    url: '../system/datos.php', 
    type: 'POST',
    success: function(res){
        //alert(res);
        var js = JSON.parse(res);
        var tabla;
        for (var i = 0;i < js.length; i++){
            tabla += '<tr><td>' + js[i].id+ '</td><td>'+ js[i].name + '</td><td>' + js[i].password + '</td><td>' + js[i].email + '</td><td>' + js[i].doc + '</td><td>' + js[i].phone + '</td></td>';
       
        }
        
        //alert(tabla);
        $('#tbody').html(tabla);
    }
    })
}