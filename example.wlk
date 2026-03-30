object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	method energia(){
		return energia
	}
	method comer(alimento){
		energia = energia + alimento.energiaQueAporta() / 2
	}
	method volar(distancia){
		energia = energia - 20 - 2 * distancia
	}
	method cansado(){
		return energia < 34
	}
}

object rebeca {
	var ave = pepita
	var cantidadCenas = 0

	method entrenar(_ave){
		ave = _ave
		cantidadCenas = 0
	}
	method alimentar(alimento){
		ave.comer(alimento)
		cantidadCenas = cantidadCenas + 1
	}
	method cenas(){
		return cantidadCenas
	}
}