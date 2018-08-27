
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
	
	
	
	
	
	