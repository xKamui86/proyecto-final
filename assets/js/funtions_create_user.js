//Funcion de validacion de evento


function setdata_New_User(e,idform){
    
    let jSonData = '';
    var objForm= document.getElementById(idform);
//dentro de la variable selección de inputs del formulario de crear usuario
    var inputForm= objForm.querySelectorAll('input');

    for(let i=0;i<inputForm.length;i++){
        jSonData+='"'+inputForm[i].id+'":'+'"'+inputForm[i].value+'",';
      }

    jSonData=jSonData.substring(0,jSonData.length-1);
    console.log(jSonData);
    send_New_Data_User(jSonData);
   
    e.preventDefault();
}


function send_New_Data_User(dataJson){

    try{
     // var json='{"POST:"POST",'+dataJson+'}';
      

      var Json ="";
      var xtthp= new XMLHttpRequest();
      xtthp.open("POST", "../php/bo/bo_user.php", true);
      xtthp.setRequestHeader("Content-Type", "application/json; chanset=UTF-8");
      xtthp.onreadystatechange=function(){
        if(this.readyState===4 && this.status=== 200) {
          
          console.log(xtthp.responseText);

        }

      }
      Json='{"POST":"POST",'+dataJson+'}';

      console.log(Json);

    }
    catch(error) {

      console.log(error); 

    }
    xtthp.send(Json);
  }
    
