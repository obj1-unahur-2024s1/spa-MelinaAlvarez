object olivia{
	var concentracion = 6
	
	method recibirMasajes(){
		concentracion = concentracion + 3
	}
	
	method discutir(){
		concentracion = 0.max(concentracion - 1)
	}
	
	method gradoDeConcentracion(){
		return concentracion
	}
	
	method tomarBanioAVapor(){}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasajes(){
		esFeliz = true 
	}
	
	method tomarBanioAVapor(){
		peso = 0.max(peso-500)
		tieneSed = true
	}
	
	method tomarAgua(){
		tieneSed = false
	}

	method comerFideos(){
		peso = peso + 250
		tieneSed = true
	}
	
	method correr(){
		peso = 0.max(peso-300)
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto() = esFeliz and not tieneSed and (peso/1000).between(50, 70)
							
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var nivelContractura = 0
	var estadoDePiel = "grasosa"
	
	method recibirMasajes(){
		nivelContractura = 0.max(nivelContractura-2)
	}
	
	method tomarBanioAVapor(){
		estadoDePiel = "piel no grasosa"
	}
	
	method comerBigMac(){
		estadoDePiel = "grasosa"
	}
	
	method bajarAFosa(){
		estadoDePiel = "grasosa"
		nivelContractura = nivelContractura + 1
	}
	
	method jugarPaddle(){
		nivelContractura = nivelContractura + 3
	}
		
	method diaDeTrabajo(){
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()
	}
}
	
object spa{
	
	method atender(persona){
		persona.recibirMasajes()
		persona.tomarBanioAVapor()
	}
}
