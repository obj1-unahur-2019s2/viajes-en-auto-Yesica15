import clientes.*

object roxana{
	method precioViaje(cliente, kms){
		return cliente.valorPorKm() * kms
	}
}

object gabriela{
	method precioViaje(cliente, kms){
		return cliente.valorPorKm() * kms * 1.2
	}
}

object mariela{
	method precioViaje(cliente, kms){
		if (cliente.valorPorKm() * kms<=50){
			return 50
		}
		return cliente.valorPorKm() * kms
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
	var property reemplazaARemisera = roxana
	
	method precioViaje(cliente, kms){
		return reemplazaARemisera.precioViaje(cliente, kms)
	}
}