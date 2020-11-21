class Buscamina
    def inicializar()
        @@filas=8
        @@columnas=8
        @@tablero=Array.new @@filas*@@columnas
        @@tablero = [0, "*"," "," ","*",1," "," ",
                    " ","*",2,1,1,1," "," ",
                    3," ",2," "," "," "," "," ",
                    "*","*",1," "," "," ",1,1,
                    2,2,1," "," "," ",1,"*",
                    " "," "," "," ",1,2,3," ",
                    1,2,1,1,1,"*","*"," ",
                    "*"," ","*"," ",1," "," ",1]
        @@casillasDesbloqueadas=""
    end
    def getNombre()
        return @nombre
    end

    def setNombre(nombre)
        @nombre = nombre
    end

    def verificarCasilla(x,y)
        posicion=coordenadaAposicion(x,y)
        @@tablero[posicion - 1] = 0
        if([posicion - 1] != 0) #casilla oculta
            @@casillasDesbloqueadas = true
         else #casilla abierta
            @@casillasDesbloqueadas = false
        end
    end 
    def coordenadaAposicion(x,y)
        x=x-1
        posicion=(x*@@filas+y)
        return posicion
    end
    def getCasillaDeTablero(x,y)
        return @@tablero[coordenadaAposicion(x,y)-1]
    end
    def getTablero()
        return @@tablero
    end

end