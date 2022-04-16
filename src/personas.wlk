import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return  self.sueldoNeto() +
				self.bonoResultado().monto(self) +
				self.bonoPresentismo().monto(self)
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
	method setCategoria(unaCategoria) {
		categoria = unaCategoria
	}
	
	method setBonoResultado(unBonoResultado) {
		bonoResultado = unBonoResultado
	}
	
	method setBonoPresentismo(unBonoPresentismo) {
		bonoPresentismo = unBonoPresentismo
	}
	
	method setCantidadDeFaltas(unaCantidadDeFaltas) {
		cantidadDeFaltas = unaCantidadDeFaltas
	}
	
	method categeoria() = categoria
	
	method bonoPresentismo() = bonoPresentismo
	
	method bonoResultado() = bonoResultado
}

object sofia {
	var categoria = gerente
	var bonoResultado
	
	method sueldoNeto() { return self.categeoria().neto() *1.3 }
	method sueldo() {
		return  self.sueldoNeto() +
				self.bonoResultado().monto(self)
	}
	
	method setCategoria(unaCategoria) {
		categoria = unaCategoria
	}
	
	method setBonoResultado(unBonoResultado) {
		bonoResultado = unBonoResultado
	}
	
	method categeoria() = categoria
	
	method bonoResultado() = bonoResultado
}


object roque {
	var bonoResultado
	var cantidadDeFaltas
	
	method setBonoResultado(unBonoResultado) {
		bonoResultado = unBonoResultado
	}
	
	method bonoResultado() = bonoResultado
	
	method sueldoNeto() { return 28000}
	
	method sueldo() {
		return self.sueldoNeto() + self.bonoResultado().monto(self) + 9000
	}
	
	method setCantidadDeFaltas(unaCantidadDeFaltas) {
		cantidadDeFaltas = unaCantidadDeFaltas
	}
	
	method cantidadDeFaltas() = cantidadDeFaltas
}

object ernesto {
	var companero
	var bonoPresentismo
	var cantidadDeFaltas
	
	method sueldoNeto() {
		return companero.sueldoNeto()
	}
	
	method sueldo() {
		return self.sueldoNeto() + self.bonoPresentismo().monto(self)
	}
	
	method companero(unCompanero) {
		companero = unCompanero
	}
	
	method bonoPresentismo() = bonoPresentismo
	
	method setBonoPresentismo(unBonoPresentismo) {
		bonoPresentismo = unBonoPresentismo
	}
	
	method setCantidadDeFaltas(unaCantidadDeFaltas) {
		cantidadDeFaltas = unaCantidadDeFaltas
	}
	
	method cantidadDeFaltas() = cantidadDeFaltas
}