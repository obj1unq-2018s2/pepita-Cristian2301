import pepita.*

object patagonia {
	
	method energiaRevitalizadora(){
		return 30
	}
}

object sierrasCordobesas {
	method energiaRevitalizadora(){
		return 70
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

object noroeste{
	method energiaRevitalizadora(){
		return pepita.energia() * 0.1
	}
}



