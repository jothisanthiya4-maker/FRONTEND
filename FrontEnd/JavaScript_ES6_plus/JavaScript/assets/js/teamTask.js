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

// task 6

const searchHero=()=>{
    let heros=["Vijay","Ajith","Suriya","SK","Dhanush"]
    const heroName=document.getElementById("heroInput").value
    const final = heros.find((e)=>e ==heroName)
        if(final){
          document.getElementById("text").innerText= final + "found in array"  
        }
        else{
            document.getElementById("text").innerText=" not found in array"
        }
    
}

// task 7

const luckyNumber=()=>{
    let luckNumbers =[7,14,21,28]
    const inpNumber=document.getElementById("getNumber").value
    const found=luckNumbers.find((e)=>{
       return  e==inpNumber
        
    })
    if(found){
        document.getElementById("foundLucky").innerText= `${found}  is a lucky number`

    }
    else{
        document.getElementById("foundLucky").textContent=" number is not a lucky number"
       
    }
}

// task 8

const product=()=>{
    productName="mobile"
    quantity=1
    price=40000
    document.getElementById("pName").innerText="product : "  + productName
    document.getElementById("quntity").innerText="quantity : "  + quantity
    document.getElementById("price").innerText="price : "  + price
    document.getElementById("btn").style.display="none"
}

// task 9

