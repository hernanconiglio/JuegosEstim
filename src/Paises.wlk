class Pais {
	var property conversionDolar = 1
	const property caracteristicasNoPermitidas = #{}
	
	method puedeVenderElJuego(unJuego) {return
		caracteristicasNoPermitidas.intersection(unJuego.caracteristicas()).isEmpty()
	}
	
}
