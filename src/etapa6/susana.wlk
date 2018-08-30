// COMIDAS

object alpiste {
	method energiaPorGramo() { 
		return 4
	}
}

object mondongo {
	method energiaPorGramo() { 
		return 100
	}
}


object bigMac {
	method energiaPorGramo() { 
		return 2
	}
}

object alcaucil {
	method energiaPorGramo(){
		return 20
	}
}

object sorgo {
	method energiaPorGramo(){
		return 9
	}
}

object mijo{
	var estaMojado = false
	
	method mojarse(){ 
		estaMojado = true
	}
	
	method secarse(){
		estaMojado = false
	}
	
	method energiaPorGramo(){
	    if(estaMojado){
	      return 15 
	    }
	    else{ 
	  	  return 20
	    }
		
    }
}

object canelones{
	var tienenSalsa = false
	var tienenQueso = false
	
    method conSalsa(){
    	tienenSalsa = true 
    }
    
    method conQueso(){
    	tienenQueso = true
    }
    
    method sinQueso(){
    	tienenQueso = false
    }
    
    method sinSalsa(){
    	tienenSalsa = false
    }
    
	method energiaPorGramo(){
	   var joules = 20
		 if(tienenSalsa){
		 	 joules += 5
		 }
		 if(tienenQueso){
		 	 joules += 7
		 }
		 return joules
	}
}

// OBJECT PEPON
object pepon {
	var energia = 0
	
	method energia(){
		return energia
	}
	method comer(cosa, cuanto) { 
		energia += (cosa.energiaPorGramo() * cuanto) / 2
	}  
	
	method volar(kms) { 
		energia -= (kms / 2) + 1
	} 
	         
	method haceLoQueQuieras() {
		self.volar(1)
	}   
}


// OBJECT PIPA
object pipa {
    var kmsVolados = 0
    var gramosQueIngirio = 0
    
    method kmsRecorridos(){
    	return kmsVolados
    }
    
    method gramosIngeridos(){
    	return gramosQueIngirio
    }
    
    method comer(cosa, cuanto){
    	gramosQueIngirio += cuanto
    }
    
    method volar(kms){
    	kmsVolados += kms
    }
    
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	// porque todos los objects deben tener los mismos metodos ya que cuando roque quiera decirle a un animal haceLoQueQuieras, los que  
	// tienen el metodo haceLoQueQuieras lo van a entender pero los que no lo tienen NO. A esto se le llama Polimorfismo
}

// OBJECT PEPITA
object pepita {
	var energia = 0
	
	method energia() {
		return energia 
	}
	
	method comer(cosa, gramos) { 
		energia += cosa.energiaPorGramo() * gramos
	}
	
	method volar(kms) { 
		energia -= kms + 10
	}
	
	method estaDebil() { 
		return energia < 50
	}  
	
	method estaFeliz() { 
		return energia.between(500, 1000)
	} 
	
	method cuantoQuiereVolar() { 
		var quiereVolar = self.energia() / 5
		if (energia.between(300, 400)) { 
			quiereVolar += 10
		}
		if (energia % 20 == 0) { 
			quiereVolar += 15
		}
		return quiereVolar
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} 
		if(self.estaFeliz()){
			self.volar(8)
		}
	}
}

// ROQUE ENTRENA DISTINTOS ANIMALES
object roque {
	var pupilo = pepita
	
	method tuPupiloEs(ave) {
		pupilo = ave
	}
	method entrenar() { 
		pupilo.volar(10)
		pupilo.comer(alpiste, 300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	} 
	method pupiloActual(){
		return pupilo
	}
}

// SUSANA ENTRENA DISTINTOS ANIMALES
object susana { 
	var pupilo = pepita
	
	method tuPupiloEs(ave){
		pupilo = ave
	}
    method entrenar(){
    	pupilo.comer(alpiste, 100)
    	pupilo.volar(20)
    }
    method pupiloActual(){
    	return pupilo
    }
}  