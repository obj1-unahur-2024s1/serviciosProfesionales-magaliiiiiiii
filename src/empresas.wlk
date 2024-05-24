import profesionales.*

class Empresa {
	
 const property profesionales=[] // quizo hacerlo lista para cmabiar un poco, y para podee tener varios del mismo tipo	
 var property honorarioDeReferencia
 
 method agregarUnProfesional(unProf){ profesionales.add(unProf)}
 method sacarUnProfesional(unPorf){profesionales.remove(unPorf)}
 method limpiarProfesionales()= profesionales.clear()
 
 method cuantosEstudiaronEn(unaUniv){
 	return profesionales.count({e=> e.universidad()== unaUniv})
 }
 	
 method caros(){ return profesionales.filter({e=> e.honorario() > honorarioDeReferencia}).asSet()}
 	//caros devuelve un conjunto

 method formadoras(){
 return	profesionales.map({e=> e.universidad()}).asSet()   // Parto de un pofesional y lo tranforma una lista de universidades donde estudiaron esos profesionales
 }
 
 method elMasBarato(){ return profesionales.min({e=> e.honorario()})} //devuelven una instancia del mas barato (profesional)
 // si quisieramos el valor del honorario mas barato: return profesionales. min({x=> x.honorario()}).honorario()  
 
method esDeGenteACotadaAll() { profesionales.all({p => p.provincias().size() <= 3})} // porque dice al menos, entonces va el =
// tambien se puede escribir con any, es lo mismo que lo de arriba pero con any
//method esDeGenteACotadaAny(){ not profesionales.any({p=> p.provincia().size()>3 }) 
	
}	


