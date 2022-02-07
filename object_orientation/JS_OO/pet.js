class Pet {

    
    constructor(name, personality){
        this.name = name;
        this.personality = personality;
    }

    sayHi(){
        return `Hello my name is ${this.name}, and Im kinda ${this.personality}`
    }

    render(){
        const h3 = document.createElement('h3');
        h3.innerText = this.sayHi()
        document.getElementById("container").appendChild(h3)
    }
}

