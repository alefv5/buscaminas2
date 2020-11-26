class Buscamina
    def inicializarEstatico()
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
    
    def inicializarRandomEstatico()
        @@tableroRandom=Array.new(@@filas*@@columnas ){rand(1...5).to_s} 
        #puts @@tableroRandom
    end
    def inicializarRandomPersonalizado(x,y)
        @@tableroRandom=Array.new(x*y+1){rand(1...6).to_s} 
        #puts @@tableroRandom
    end
    
    def generarHTMLPersonalizado(x,y)
        cadena_Html ="<table border=""1"" WIDTH=""500"" HEIGHT=""500"">"
        cadena_HtmlFin="</table>"
            for i in(1..y)
                cadena_Html=cadena_Html+"<tr>"
                for j in(1..x)
                    cadena_Html=cadena_Html+"<th>"+@@tableroRandom[i*j].to_s
                    cadena_Html=cadena_Html+"</th>"
                end
                cadena_Html=cadena_Html+"</tr>"
            end
                return cadena_Html=cadena_Html+cadena_HtmlFin
        end
        def verificarCasilla(x,y)
            posicion=coordenadaAposicion(x,y)
            
            @@tablero[posicion-1] = 0
            @@casillasDesbloqueadas = posicion
    
            #puts @@casillasDesbloqueadas
            generarHTMLEstatico()
         return @@casillasDesbloqueadas
        end 
    def generarHTMLEstatico()
            cadena_Html ="<table border=""1"" WIDTH=""500"" HEIGHT=""500"">"
            cadena_HtmlFin="</table>"
            for i in(1..8)
                cadena_Html=cadena_Html+"<tr>"
                for j in(1..8)
                    cadena_Html=cadena_Html+"<th>" +(@@tablero[i*j]).to_s
                    #[@@casillasDesbloqueadas]
                    cadena_Html=cadena_Html+"</th>"
                end
                cadena_Html=cadena_Html+"</tr>"
            end
       return cadena_Html=cadena_Html+cadena_HtmlFin
    end
    

    
    def coordenadaAposicion(x,y) #0 0 no da devuelve negativo 2 2 - 9 arreglo desde 0  2 1
        y=y-1 
        posicion=(y*@@filas+x)
        return posicion
    end
    def getCasillaDeTablero(x,y)
       return @@tablero[coordenadaAposicion(x,y)-1]
    end
    def getTableroEstatico()
        return @@tablero
    end
    def getTableroRandomPersonalizado()
        return @@tableroRandom
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
    def getNombre()
        return @nombre
    end
end