class Buscamina
    def inicializar()
        @@filas=8
        @@columnas=8
        @@tablero=Array.new @@filas*@@columnas 
        @@tablero = [" ", "*"," "," ","*",1," "," ",
                    " ","*",2,1,1,1," "," ",
                    3," ",2," "," "," "," "," ",
                    "*","*",1," "," "," ",1,1,
                    2,2,1," "," "," ",1,"*",
                    " "," "," "," ",1,2,3," ",
                    1,2,1,1,1,"*","*"," ",
                    "*"," ","*"," ",1," "," ",1] #array empieza en 1 y acaba en 64
        @@casillasDesbloqueadas=".c1"
        end
    def getNombre()
        return @nombre
    end

    def setNombre(nombre)
        @nombre = nombre
    end

    def verificarCasilla(x,y)
        posicion=coordenadaAposicion(x,y)
        puts posicion
        @@tablero[posicion-1] = 0
        #if(@@tablero[posicion] != 0) #casilla oculta
            @@casillasDesbloqueadas =+ ".c"+posicion.to_s
            puts @@casillasDesbloqueadas
         #else #casilla abierta
           #@@casillasDesbloqueadas = true
         #end
         return @@casillasDesbloqueadas
    end 
    def verificarCasilla2(x,y)
        posicion=coordenadaAposicion(x,y)
        puts posicion
        @@tablero[posicion-1] = 0
        if(@@tablero[posicion] != 0) #casilla oculta
            @@casillasDesbloqueadas = false
         else #casilla abierta
           @@casillasDesbloqueadas = true
         end
         return @@casillasDesbloqueadas
    end 
    def coordenadaAposicion(x,y) #0 0 no da devuelve negativo 2 2 - 9 arreglo desde 0  2 1
        puts y
        puts x
        y=y-1 
        posicion=(y*@@filas+x)
        return posicion
    end
    def getCasillaDeTablero(x,y)
       return @@tablero[coordenadaAposicion(x,y)-1]
    end
    def getTablero()
        return @@tablero
    end
    def getCasillaDesbloqueada()
        return @@casillasDesbloqueadas
    end

end