/************************************
 Playground: Representar un velocímetro de un automóvil
 Autor: David Angeles
 Fecha: 25/12/16
 GitHub: https://github.com/Dangelesm/MiniReto2.git
 ************************************/

import UIKit

class Auto{
    var velocidad: velocidades
    
    init(){
        self.velocidad = velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() ->(actual : Int, velodadEnCadena: String){
        let velocidadActual = self.velocidad
        switch(self.velocidad){
        case .apagado:
            self.velocidad = .velocidadBaja
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
        case .velocidadAlta:
            self.velocidad = .velocidadMedia
        }
        return (velocidadActual.rawValue, velocidadActual.resultado)
    }
}

enum velocidades: Int{
    case apagado = 0,
         velocidadBaja = 20,
         velocidadMedia = 50,
         velocidadAlta = 120
    
    init(velocidadInicial:velocidades){
        self = velocidadInicial
    }
    
    var resultado : String {
        switch self {
        case .apagado: return "Velocidad: APAGADO";
        case .velocidadBaja: return "Velocidad: BAJA";
        case .velocidadMedia: return "Velocidad: MEDIA";
        case .velocidadAlta: return "Velocidad: ALTA";
        }
    }
}

//Prueba del Reto
let Velocimetro: Auto = Auto()
Velocimetro.velocidad
for velocidades in 1...20{
    let respuesta = Velocimetro.cambioDeVelocidad()
    print(velocidades,"\t",respuesta.actual, "\t", respuesta.velodadEnCadena)
}
