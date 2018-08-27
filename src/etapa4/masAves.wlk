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
}
