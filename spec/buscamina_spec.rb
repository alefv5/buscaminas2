require 'buscamina'
RSpec.describe Buscamina do 
    it 'Debería mostrar nombre' do
        @juego = Buscamina.new
        @juego.inicializar()
        @juego.setNombre('elpepe')
        expect(@juego.getNombre()).to eq('elpepe')
     end
     it 'Debería mostrar posicion 10' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(2,2)).to eq(10)
     end
     it 'Debería mostrar posicion 46' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(6,6)).to eq(46)
     end
     it 'Debería mostrar posicion 1' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(1,1)).to eq(1)
     end
     it 'Debería mostrar la casilla *' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.getCasillaDeTablero(2,2)).to eq("*")
     end
     it 'Debería mostrar tablero' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.getTablero()).to eq([ " ", "*"," "," ","*","1"," "," ",
                                            " ","*","2","1","1","1"," "," ",
                                            "3"," ","2"," "," "," "," "," ",
                                            "*","*","1"," "," "," ","1","1",
                                            "2","2","1"," "," "," ","1","*",
                                            " "," "," "," ","1","2","3"," ",
                                            "1","2","1","1","1","*","*"," ",
                                            "*"," ","*"," ","1"," "," ","1"])
     end
     it 'Debería verificar la casilla para el cambio de color ' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.verificarCasilla(2,2)).to eq(".c10")
     end
     it 'Debería verificar la casilla para el cambio de color ' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.verificarCasilla(1,1)).to eq(".c1")
     end
     it 'Deberia mostrar cadena de generarHTML' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.generarHTML()).to eq("<table border=""1""><tr><th></th><th></th></tr></table>")
     end
     it 'Set tamaño array 5x5' do
         @juego = Buscamina.new
         @juego.setTamañoArray(5,5)
         expect(@juego.getTamañoColumnas()).to eq(5)
         expect(@juego.getTamañoFilas()).to eq(5)
      end
      it 'Set tamaño array 3x2' do
         @juego = Buscamina.new
         @juego.setTamañoArray(3,2)
         expect(@juego.getTamañoColumnas()).to eq(3)
         expect(@juego.getTamañoFilas()).to eq(2)
      end

   end