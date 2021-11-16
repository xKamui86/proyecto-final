//Funcion de validacion de evento

function setDataUser(e,idForm){
    
    let jSonData = '';
    var objForm= document.getElementById(idForm);
    //dentro de la variable selección de inputs del formulario de login
    var inputForm= objForm.querySelectorAll('input');
    
    for(let i=0;i<inputForm.length;i++){
      jSonData+='"'+inputForm[i].id+'":'+'"'+inputForm[i].value+'",';
    }
    jSonData=jSonData.substring(0,jSonData.length-1);
    console.log(jSonData);
    sendDataUser(jSonData);

    e.preventDefault();
  
  }

  function sendDataUser(dataJson){

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
    
