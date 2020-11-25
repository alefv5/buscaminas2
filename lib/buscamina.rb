class Buscamina
    def inicializar()
        @@filas=8
        @@columnas=8
        @@tablero=Array.new @@filas*@@columnas 
        @@tablero = [" ","*"," "," ","*","1"," "," ",
                     " ","*","2","1","1","1"," "," ",
                     "3"," ","2"," "," "," "," "," ",
                    "*","*","1"," "," "," ","1","1",
                    "2","2","1"," "," "," ","1","*",
                    " "," "," "," ","1","2","3"," ",
                    "1","2","1","1","1","*","*"," ",
                    "*"," ","*"," ","1"," "," ","1"] #array empieza en 1 y acaba en 64
                    @@casillasDesbloqueadas=".c"
    end
    
    def generarHTML()
        return "<table border=""1""><tr><th></th><th></th></tr></table>"
    end
    def getNombre()
        return @nombre
    end
    def setTamañoArray(x,y)
        @x=x
        @y=y
    end
    def getTamañoColumnas()
        return @x
    end
    def getTamañoFilas()
        return @y
    end
    def setNombre(nombre)
        @nombre = nombre
    end

    def verificarCasilla(x,y)
        posicion=coordenadaAposicion(x,y)
        @@tablero[posicion-1] = 0
        @@casillasDesbloqueadas =+ ".c"+posicion.to_s
        puts @@casillasDesbloqueadas
     return @@casillasDesbloqueadas
    end 
    def coordenadaAposicion(x,y) #0 0 no da devuelve negativo 2 2 - 9 arreglo desde 0  2 1
        
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
   

end