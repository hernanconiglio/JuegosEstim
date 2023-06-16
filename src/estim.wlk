import Descuentos.*

object estim {
	const juegos = #{}
	
	method juegoMasCaro() = juegos.max({j=>j.precioDeLista()})
	method juegosMayoresA3CuartasPartesDelMasCaro() {
		return juegos.filter({j=>j.precioDeLista() > self.juegoMasCaro().precioDeLista()*0.75})
	}
	
	method nuevoValorDeDescuentoParaMasCaros(nuevoValor) {
		descuentoJuegosMasCaros.nuevoValorDeDescuento(nuevoValor)
	}
	
	method juegosAptosParaMenoresEnPais(unPais) {return
		juegos.filter({j=>j.esAptoEnElPais(unPais)})
	}
	
	method cantidadJuegosAptosParaElPais(unPais) {return
		self.juegosAptosParaMenoresEnPais(unPais).size()
	}
	
	method preciosLocalesDeJuegosAptosParaElPais(unPais) {return
		self.juegosAptosParaMenoresEnPais(unPais).map({j=>j.precio()*unPais.conversionDolar()})
	}
	
	method promedioPreciosJuegosEnPais(unPais) {return
		self.preciosLocalesDeJuegosAptosParaElPais(unPais).sum() / self.cantidadJuegosAptosParaElPais(unPais)
	}
}

