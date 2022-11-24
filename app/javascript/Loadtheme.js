const userid =document.getElementById('userid');
const anouncement =document.getElementById('anouncement');
const reminder =document.getElementById('reminder');
  function Loadtheme(){
    var load = localStorage.getItem('style');

    if(load == null){
      themeStyleSheet.setAttribute("href","css/Light.css");
    }
    else if(load == "css/.css"){
      themeStyleSheet.setAttribute("href","css/Light.css");
    }
    else{
    themeStyleSheet.setAttribute("href",load);
  }
  };
  function User(){
        var user = localStorage.getItem('user');
if(user == "admin"){
  userid.innerHTML="Admin";

}
else if(user == "student1"){
  userid.innerHTML="June Cabrera";
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == "student2"){
  userid.innerHTML="Jade Cruz";
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student3'){
  userid.innerHTML= 'Joana Manalo';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student4'){
  userid.innerHTML= 'Daniel Marasigan';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student5'){
  userid.innerHTML= 'Kris evans';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student6'){
  userid.innerHTML= 'Justin yumul';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student7'){
  userid.innerHTML= 'Carlo Mapanganib';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student8'){
  userid.innerHTML= 'Kyle Canceran';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student9'){
  userid.innerHTML= 'Ezekiel Lee';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student10'){
  userid.innerHTML= 'Justin Sabio';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student11'){
  userid.innerHTML= 'Daryl Yap';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student12'){
  userid.innerHTML= 'Michelle Dee';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student13'){
  userid.innerHTML= 'Mika Mahika';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student14'){
  userid.innerHTML= 'Billy Jeans';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student15'){
  userid.innerHTML= 'Jay abrenica';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student16'){
  userid.innerHTML= 'Mark Camper';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student17'){
  userid.innerHTML= 'Kim tolentino';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student18'){
  userid.innerHTML= 'Alyssa magsaysay';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student19'){
  userid.innerHTML= 'Gloria mapagtanggo';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student20'){
  userid.innerHTML= 'Kristine abesamis';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student21'){
  userid.innerHTML= 'Mae baltazar';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student22'){
  userid.innerHTML= 'Judith Bill';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student23'){
  userid.innerHTML= 'Harvey hill';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student24'){
  userid.innerHTML= 'James Landiko';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
else if(user == 'student25'){
  userid.innerHTML= 'Xavier Gabriel';
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
  else{
  userid.innerHTML="Unknown";
  anouncement.innerHTML="";
  reminder.innerHTML="";
}
};
function Userid(){

var user = localStorage.getItem('user');
if(user == "admin"){
  userid.innerHTML="Admin";

}
else if(user == "student1"){
  userid.innerHTML="June Cabrera";
  
}
else if(user == "student2"){
  userid.innerHTML="Jade Cruz";
  
}
else if(user == 'student3'){
  userid.innerHTML= 'Joana Manalo';
  
}
else if(user == 'student4'){
  userid.innerHTML= 'Daniel Marasigan';
  
}
else if(user == 'student5'){
  userid.innerHTML= 'Kris evans';
  
}
else if(user == 'student6'){
  userid.innerHTML= 'Justin yumul';
  
}
else if(user == 'student7'){
  userid.innerHTML= 'Carlo Mapanganib';
  
}
else if(user == 'student8'){
  userid.innerHTML= 'Kyle Canceran';
  
}
else if(user == 'student9'){
  userid.innerHTML= 'Ezekiel Lee';
  
}
else if(user == 'student10'){
  userid.innerHTML= 'Justin sabio';
  
}
else if(user == 'student11'){
  userid.innerHTML= 'Daryl yap';
  
}
else if(user == 'student12'){
  userid.innerHTML= 'Michelle dee';
  
}
else if(user == 'student13'){
  userid.innerHTML= 'Mika Mahika';
  
}
else if(user == 'student14'){
  userid.innerHTML= 'Billy Jeans';
  
}
else if(user == 'student15'){
  userid.innerHTML= 'Jay abrenica';
  
}
else if(user == 'student16'){
  userid.innerHTML= 'Mark Camper';
  
}
else if(user == 'student17'){
  userid.innerHTML= 'Kim tolentino';
  
}
else if(user == 'student18'){
  userid.innerHTML= 'Alyssa magsaysay';
  
}
else if(user == 'student19'){
  userid.innerHTML= 'Gloria mapagtanggo';
  
}
else if(user == 'student20'){
  userid.innerHTML= 'Kristine abesamis';
  
}
else if(user == 'student21'){
  userid.innerHTML= 'Mae baltazar';
  
}
else if(user == 'student22'){
  userid.innerHTML= 'Judith Bill';
  
}
else if(user == 'student23'){
  userid.innerHTML= 'Harvey hill';
  
}
else if(user == 'student24'){
  userid.innerHTML= 'James Landiko';
  
}
else if(user == 'student25'){
  userid.innerHTML= 'Xavier Gabriel';
  
}
  else{
  userid.innerHTML="Unknown";
  
}
}
