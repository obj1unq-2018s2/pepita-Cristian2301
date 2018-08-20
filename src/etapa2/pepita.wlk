import comidas.*


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