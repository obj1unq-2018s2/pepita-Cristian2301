
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

object mijo {
	var joules = 20
	
	method mojarse(){
		joules = 15
	}
	
	method secarse(){
		joules = 20
	}
	
	method energiaPorGramo(){
		return joules
	}
}

object canelones{
	var joulesPorGramo = 20
	
    method conSalsa(){
    	joulesPorGramo = 25
    }
    
    method conQueso(){
    	joulesPorGramo = 27
    }
    
    method conQuesoYSalsa(){
    	joulesPorGramo = 32
    }
    
    method sinAderezos(){
    	joulesPorGramo = 20
    }
    
	method energiaPorGramo(){
		return joulesPorGramo
	}
}
	
	
	
	
	
	