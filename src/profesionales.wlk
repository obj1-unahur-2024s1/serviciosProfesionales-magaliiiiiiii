import universidad.*
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	
	method honorariosPorHora() { return 3000 }
	method honorario()=universidad.honorariosRecomendados()
	// recibe:-
	// retorna:un Conjunto
	method provincias()=#{universidad.provincia()}  // el valor que devuelve debe ser un conjunto porque así está definido en la clase Profesional Asociado

}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	const property universidad
	var property honorario=3000   //para que haya polimorfismo con profesional asociado
   method provincias()=#{"Entre Ríos", "Corrientes", "Santa Fe"}
    // ojo que aparte de que sea polimorficos tienen que devolver el mismo "tipo"
   	// si en un objeto es un conjunto, en los demas tambien
	
}
 
class ProfesionalLibre {
	const property universidad
	const property provincias=#{}   //para que sea un conjunto y no se repitan los lugares. Un profesional seguro q pueda trabajar en mas de un lugar a la vez, por eso es una variable conjuntos
	var property honorario
	
	method agregarProvincia(unaProv)=provincias.add(unaProv)
	method quitarProvincia(unaProvincia)= provincias.remove(unaProvincia)
	method clearProvincias()= provincias.clear() 
}
