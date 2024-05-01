function loginForm() {
   let uname = document.forms['regForm']['uname']
   let Password = document.forms['regForm']['pwd']


   if(uname.value == 0 ){
    alert("enter the user name")
    uname.focus()
    return false
   }

}