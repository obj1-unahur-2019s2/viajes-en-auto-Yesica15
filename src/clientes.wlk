object ludmila {
	method valorPorKm(){
		return 18
	}
}

object anaMaria{
	var property estabilidad = true
	
	method valorPorKm(){
		if (estabilidad){
			return 30
		}
		return 25
	}	
}

object teresa{
	var property valorPorKm = 22
}

object melina{
	var property reemplazaACliente = ludmila
	
	method valorPorKm(){
		return reemplazaACliente.valorPorKm() - 3
	}
}