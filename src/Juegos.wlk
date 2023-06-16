import Descuentos.*
import estim.*

class Juego {
	const property precioDeLista = 0
	var property descuento = sinDescuento
	const property caracteristicas = #{}
	const property criticas = []
	
	method precio() { return
		if(estim.juegosMayoresA3CuartasPartesDelMasCaro().contains(self))
			precioDeLista - descuentoJuegosMasCaros.valorDeDescuento(precioDeLista)
		else precioDeLista - descuento.valorDeDescuento(precioDeLista)
	}
	
	method esAptoEnElPais(unPais) {return
		unPais.puedeVenderElJuego(self)
	}
}

object lenguajeInapropiado {}
object violencia {}
object paraAdultos {}