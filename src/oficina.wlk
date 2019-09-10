import remiseras.*
import clientes.*


object oficina {
	var primeraRemisera 
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera =remisera1
		segundaRemisera =remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera =remisera
	}
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera =remisera
	}
	method intercambiarRemiseras(){
		var auxiliar = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = auxiliar
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if (((primeraRemisera.precioViaje(cliente, kms) > segundaRemisera.precioViaje(cliente, kms)) and 
			(primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms))>= 30) or
			((primeraRemisera.precioViaje(cliente, kms) < segundaRemisera.precioViaje(cliente, kms)) and
			not((segundaRemisera.precioViaje(cliente, kms) - primeraRemisera.precioViaje(cliente, kms))>= 30))){
			return segundaRemisera
		}
		return primeraRemisera
		
	}
}
