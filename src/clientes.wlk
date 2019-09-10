object ludmila {
	method precio(){
		return 18
	}
}

object anaMaria{
	var estabilidad = true
	
	method precio(){
		if (estabilidad){
			return 30
		}
		return 25
	}
	
	method estaEstable(){
		estabilidad = true
	}
	
	method noEstaEstable(){
		estabilidad = false
	}
	
}

object teresa{
	var property precio = 22
}

object melina{
	var property reemplazoC = ludmila
	
	method precio(){
		return reemplazoC.precio() - 3
	}
}