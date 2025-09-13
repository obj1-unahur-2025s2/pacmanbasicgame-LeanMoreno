import wollok.game.*
object pacman {
	var property image = "pacman.png"
	var property position = game.origin()
	var vidas = 3

	method vidas(){
		return vidas
	}

	method perderVida() {
		vidas = vidas - 1
		position = game.origin()	
	}
	
	method juegoTerminado() = vidas == 0

	method moverseHaciaArriba(){
		if(self.position().y() == game.height()-1){ //Esto es si pacman llega al borde de arriba del tablero.
			self.position(game.at(self.position().x(),0)) //Si llega al borde de arriba vuelve a abajo del tablero en el eje Y solamente.
		}
		else{
			self.position(self.position().up(1)) //Se mueve una posicion arriba
		}
	}

	method moverseHaciaAbajo(){
		if(self.position().y() == 0){ //Esto es si pacman llega al borde de abajo del tablero.
			self.position(game.at(self.position().x(),game.height()-1)) //Si llega al borde de abajo vuelve a arriba del tablero en el eje Y solamente.
		}
		else{
			self.position(self.position().down(1)) //Se mueve una posicion abajo
		}
	}

	method moverseHaciaIzquierda(){
		if(self.position().x() == 0){ //Esto es si pacman llega al borde de abajo del tablero.
			self.position(game.at(game.width()-1,self.position().y())) //Si llega al borde izquierdo vuelve a la derecha del tablero en el eje x solamente.
		}
		else{
			self.position(self.position().left(1)) //Se mueve una posicion a la izquierda
		}
	}

	method moverseHaciaDerecha(){
		if(self.position().x() == game.width()-1){ //Esto es si pacman llega al borde derecho del tablero.
			self.position(game.at(0,self.position().y())) //Si llega al borde derecho vuelve a la izquierda del tablero en el eje x solamente.
		}
		else{
			self.position(self.position().right(1)) //Se mueve una posicion a la derecha
		}
	}
}

object cherry {
	var property image = "cherry.png"
	var property position = game.center()
}

class Rival {
	const numero
	
	method image() = "rival" + numero.toString() + ".png"

	method position() = game.at(numero + 1, numero + 1)
}

object fantasmaRojo{
	method position() = game.at(3,3)

	method image() = "rival1.png"
}

object fantasmaAzul{
	method position() = game.at(5,6)
	method image() = "rival2.png"
}