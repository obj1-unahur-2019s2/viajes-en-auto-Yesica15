import clientes.*

object roxana{
	method precioViaje(cliente, kms){
		return cliente.precio() * kms
	}
}

object gabriela{
	method precioViaje(cliente, kms){
		return cliente.precio() * kms * 1.2
	}
}

object mariela{
	method precioViaje(cliente, kms){
		if (cliente.precio() * kms<=50){
			return 50
		}
		return cliente.precio() * kms
	}
} 

object juana{
	method precioViaje(cliente, kms){
		if (kms<=8){
			return 100
		}
		return 200
	}
}

object lucia{
	var property reemplazoR = roxana
	
	method precioViaje(cliente, kms){
		return reemplazoR.precioViaje(cliente, kms)
	}
}