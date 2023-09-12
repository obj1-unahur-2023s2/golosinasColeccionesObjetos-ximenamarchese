import golosinas.*

object mariano {
	
	
	method sabores()=golosinas.map({g=>g.sabor()}).asSet()
	method gustosFaltantes(todosLosSabores){
		return todosLosSabores.difference(self.sabores())
		}
	method golosinaMasCara(){
		return golosinas.max({g=>g.precio()})
	}
	method golosinaDeSabor(unSabor){
		return golosinas.find{g=>g.sabor()==unSabor}
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter{g=>g.sabor()==unSabor}
	}
	method buscarGolosinas(closure){
		return golosinas.filter(closure)
	}
}
