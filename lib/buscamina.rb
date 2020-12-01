class Buscamina
    def inicializarEstatico()
        @@filas=8
        @@columnas=8
        @@tablero=Array.new @@filas*@@columnas 
        @@tablero = ["1","1","-","-","1","1","2","*",
                     "*","1","-","-","2","*","3","1",
                    "1","1","-","-","2","*","3","1",
        "-","-","-","-","1","1","2","*",
        "-","-","-","1","1","1","1","1",
        "1","1","1","2","*","1","-","-",
        "*","2","3","*","3","1","-","-",
        "2","*","3","*","2","-","-","-"] #array empieza en 1 y acaba en 64
    end
    def generarHTMLPersonalizado(x,y)
        cadena_Html ="<table border=""1"" WIDTH=""500"" HEIGHT=""500"" >"
        cadena_HtmlFin="</table>"
        numero=0
            for i in(1..y)
                cadena_Html=cadena_Html+"<tr>"
                for j in(1..x)
                    cadena_Html=cadena_Html+"<td><label id="+numero.to_s + ">"+ (@@tablero[numero]).to_s + "</label>"
                    numero=numero+1
                    cadena_Html=cadena_Html+"</td>"
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
    def setNombre(name)
        @nombre=name
    end
    def getNombre()
        return @nombre
    end
    
end