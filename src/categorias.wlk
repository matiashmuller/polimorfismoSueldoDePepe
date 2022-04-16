
object gerente {
	method neto() { return 15000 } 
}

// agregar cadete

object cadete {
	method neto() { return 20000 } 
}

object vendedor {
	var hayMuchasVentas
	
	method activarAumentoPorMuchasVentas() {
		hayMuchasVentas = true
	}
	
	method desactivarAumentoPorMuchasVentas() {
		hayMuchasVentas = false
	}
	
	method neto() {
		if(hayMuchasVentas) {
			return 16000*1.25
		} else {
			return 16000
		}
	} 
}

object medioTiempo {
	var categoriaBase
	
	method setCategoriaBase(categoria) {
		categoriaBase = categoria
	}
	
	method categoriaBase() {
		return categoriaBase
	}
	
	method neto() {
		return self.categoriaBase().neto() /2
	}
}