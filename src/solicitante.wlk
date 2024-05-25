import profesionales.*
import empresas.*
import universidad.*

class Solicitante {
	var property algoQueSeSolicita
	//var property provincia = cosa.provincia()
	
	method puedeSerAtendidoPor(unProf){ return self.algoQueSeSolicita().puedeSerAtendidoPor(unProf)}
	
	
}

class Persona{
	const property provincia
	
	//devuelve: boobleano
	method puedeSerAtendidoPor(unProfesional){
		return unProfesional.provincias().contains(provincia)}
	
	
} 

class Institucion{
	const property universidad=#{}
	
		//method agregarUniversidad(unaUni){ universidad.add(unaUni)}
		//method eliminarUniversidad(unaUni){ universidad.remove(unaUni)}
	
		
		
		method puedeSerAtendidoPor(unProfesional){
			self.universidad().contains(unProfesional.universidad())
		}
		method provincia(){} //devolver conjunto
}

class Club{
	//solo nos interesa saber en que provincias está y 
	//podrá ser atendido si al menos 1 profesional puede trabajar en alguna 
	//de las provincias donde está el club.
		const property provincia=#{}
		
		method siHayALMenosUnProfesiona(unProfesional){
			return (self.provincias().intersection(unProfesional.provincias())).size()
		}
		method provincias()= provincia
		method puedeSerAtendidoPor(unProfesional){
		return self.siHayALMenosUnProfesiona(unProfesional)>= 1
		 //return provinciasDondeEsta.any(
		// { pcia => unProfesional.provincias().contains(pcia) })
		 //var listaReferencia=[]
		// unProfesional.provincias().forEach({x=> listaReferencia.add(self.provincia().contains(x)) })
		}
		method provincia(){} //devolver conjunto
}