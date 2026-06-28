// task 1

const characterLength=()=>{
    const findValue=document.getElementById("lengthInput").value
    alert('length of input value is '+ findValue.length)
    document.getElementById("lengthInput").value = ""
}

// task 2

const ageCheck=()=>{
    const ageValue=document.getElementById("ageInput").value
    if (ageValue<12){
        alert('child')
    }
    else if(ageValue>12 && ageValue<=19){
        alert('teenager')
    }
    else if(ageValue >=20 && ageValue<59){
        alert('adult')
    }
    else{
        alert('senior citizen')
    }
     document.getElementById("ageInput").value = ""
}

// task 3

const themeToggle=()=>{
    if(document.getElementById("body").style.color=="black" && document.getElementById("body").style.backgroundColor=="white"){
        document.getElementById("body").style.color="white"
        document.getElementById("body").style.backgroundColor="black"

    }
    else{
        document.getElementById("body").style.color="black"
        document.getElementById("body").style.backgroundColor="white"

    }
}

// task 4

const ticketCheck=()=>{
    const totalTicket=document.getElementById("ticketInput").value
    totalAmount=totalTicket*150
    alert("your total amount is " + totalAmount)
    document.getElementById("ticketInput").value = ""
}

// task 5

const profile=()=>{
    const inpName=document.getElementById("cardName").value
    const inpRole=document.getElementById("cardRole").value
    const inpCompany=document.getElementById("cardCompany").value
    document.getElementById("name").innerText="Name :" + inpName
    document.getElementById("role").innerText="Role :" + inpRole
    document.getElementById("company").innerText="Company :" + inpCompany
    document.getElementById("cardName").value=""
    document.getElementById("cardRole").value=""
    document.getElementById("cardCompany").value=""

}