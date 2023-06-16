class Descuento {
	var valorDeDescuento = 0
	method valorDeDescuento(precioDeLista)
	method nuevoValorDeDescuento(nuevoValor) {valorDeDescuento = nuevoValor}
}

class DescuentoDirecto inherits Descuento {
	override method valorDeDescuento(precioDeLista) {
		return precioDeLista * valorDeDescuento / 100
	}
}

class DescuentoFijo inherits Descuento {
	override method valorDeDescuento(precioDeLista) {
		return (precioDeLista/2).min(valorDeDescuento)
	}
}

object sinDescuento inherits Descuento {
	override method valorDeDescuento(precioDeLista) = 0
}

object gratis inherits Descuento {
	override method valorDeDescuento(precioDeLista) {
		return precioDeLista
	}
}
	
object descuentoJuegosMasCaros inherits DescuentoDirecto {
	
}

class DescuentoFijoVip inherits DescuentoFijo {
	// el descuento FijoVip le suma un descuento del 25% al valor de descuento fijo que tiene
	// asignado el juego
	override method valorDeDescuento(precioDeListaDelJuego) {return
		precioDeListaDelJuego.min(super(precioDeListaDelJuego)+precioDeListaDelJuego*0.25)
	}
}