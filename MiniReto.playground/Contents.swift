/************************************
Playground: Para evaluar un rango de 100 números
Autor: David Angeles 
Fecha: 07/12/16
Características:
    1. Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!” 
    2. Si el número es par, imprime: # el número + “par!!!”
    3. Si el número es impar, imprime: # el número + “impar!!!”
    4. Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!"
GitHub: https://github.com/Dangelesm/MiniRetoRango0a100.git
 ************************************/

import UIKit

//Arreglo de para almacenar números enteros
var numeros = [Int]()

//Ciclo que asigna los números del 0 al 100 al arreglo
for i in 0...100 {
    numeros.append(i)
}

//Variable para almacenar la descripción de la regla que cumple el número
var numDesc = ""

//Ciclo para recorrer los elementos del arreglo
for dato in numeros{
    numDesc = "\(dato)\t"
    
    //Número divisinle entre 5
    if dato % 5 == 0{
        numDesc += " Bingo !!!"
    }
    //Número Par
    if dato % 2 == 0 {
        numDesc += " Par !!!"
    }
    //Número Impar
    if dato % 2 > 0 {
        numDesc += " Impar !!!"
    }
    //Número se encuentra entre 30 y 40
    if dato >= 30 && dato <= 40{
        numDesc += " Viva Switch !!!"
    }
    print(numDesc)
}