/************************************
 Playground: Representar un velocímetro de un automóvil
 Autor: David Angeles
 Fecha: 25/12/16
 GitHub: https://github.com/Dangelesm/MiniRetoRango0a100.git
 ************************************/

import UIKit

class Auto{
    var velocidad = velocidades()
    
    init(velocidadInicial:velocidades){
        self.velocidad = velocidadInicial
    }
    
    func cambioDeVelocidad() ->(actual : Int, velodadEnCadena: String){
        
    }
}

enum velocidades: Int{
    case apagado = 0,
         velocidadBaja = 20,
         velocidadMedia = 50,
         velocidadAlta = 120
    
    init(){
        self = .apagado
    }
}
