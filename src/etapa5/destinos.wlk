object patagonia {
	
	method energiaRevitalizadora(){
		return 30
	}
}

object sierrasCordobezas(){
	method energiaRevitalizadora(){
		return 30
	}
}

object marDelPlata {
	method energiaRevitalizadora(){
		if(temporada.esTemporadaAlta()){
			return -20
		}
		else{
			return 80
		}
	}
}

object temporada {
	var esTemporadaAlta = false
	
	method esTemporadaAlta(){
		return esTemporadaAlta
	}
}