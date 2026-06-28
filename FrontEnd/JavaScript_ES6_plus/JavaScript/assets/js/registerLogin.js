let details=[]
const register=()=>{
    const firstName=document.getElementById("fName").value 
    const lastName=document.getElementById("lName").value 
    const userName=document.getElementById("userNameInp").value 
    const password=document.getElementById("passInp").value 
    const dateOfBirth=document.getElementById("dobInp").value 
    const user1={firstName,lastName,userName,password,dateOfBirth}
    details.push(user1)
    document.getElementById("fName").value=""
    document.getElementById("lName").value=""
    document.getElementById("userNameInp").value=""
    document.getElementById("passInp").value=""
    document.getElementById("dobInp").value=""
    alert('Registration Successful')
    window.location.href="./login.html"
    



}

const login=()=>{
    const user=document.getElementById("loginInp").value
    const pass=document.getElementById("passInp").value
    if(user==details[0].userName && pass[0]==details.password){
        alert('Login Success')
    }
    else{
        alert('Provide correct details')
    }
}
