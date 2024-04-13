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
	var peso = 55000
	
	method esFeliz() = true
	
	method tieneSed() = true
	
	method peso() = peso
	
	method recibirMasajes(){
		self.esFeliz()
	}
	
	method tomarBanioAVapor(){
		self.tieneSed() 
		peso = 0.max(peso-500)
	}
	
	method tomarAgua(){
		not self.tieneSed()	
	}

	method comerFideos(){
		self.tieneSed()
		peso = peso + 250
	}
	
	method correr(){
		peso = 0.max(peso-300)
	}
	
	method verNoticiero(){
		not self.esFeliz()
	}
	
	method estaPerfecto() = self.esFeliz() and
							not self.tieneSed() and
							(self.peso()/1000).between(50, 70)
							
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
