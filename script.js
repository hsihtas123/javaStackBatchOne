function login() {
    alert("Login button clicked")
    let uname =document.getElementById("uname")
    if(uname.value == "") {
        alert ("Enter the Username")
        uname.focus()
        return false
    }
    let pwd =document.getElementById("pwd")
    if(pwd.value == "") {
        alert ("Enter the Password")
        pwd.focus()
        return false
    }
    let gender = document.getElementsByName("gender")
    let genderVale= ''
    for (let index = 0; index < gender.length; index++) {
        if(gender[index].checked) {
            genderVale = gender[index].value
        }
       }
    if(genderVale == "") {
        alert("gender not selected")
        gender.focus();
        return false;
    }
    let skils = document.getElementsByName("skills")
    
    let skilsValue = []
    for (let index = 0; index < skils.length; index++) {
        if(skils[index].checked) {
            skilsValue.push(skils[index].value)
        }
        
    }
    if(skilsValue.length == 0) {
        alert("skilss not selected")
        skils.focus()
        return false;
    }
    let city =document.querySelector('select')
       if(city.value == 0) {
        alert("Select the City option")
        return false
    }
    else {
        alert(city.value)
    }

    console.log(uname)
    console.log(pwd)
    alert(`Gender Selected ${genderVale}`)
    console.log( `Gender Selected ${genderVale}`)
     console.log(skilsValue)
     console.log(city.value)
    if(uname === pwd) {
        alert("Login Success")
    }
    else {
        alert("Login failed")
    }
}