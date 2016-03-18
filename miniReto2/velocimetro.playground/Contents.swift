// Velocimetro de Automovil

import UIKit


enum Velocidades : Int {
    case
    Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}


class Auto{
    var velocidad : Velocidades = .Apagado
    
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena : String){
        var velocidadEnCadena: String
        
        switch velocidad {
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad baja"
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad media"
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        
        return (velocidad.rawValue,"\(velocidad)")
    }
}

var auto = Auto(velocidad : Velocidades.Apagado)
for n in 0...19{
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    auto.cambioDeVelocidad()
}
