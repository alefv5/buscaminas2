require 'buscamina'

RSpec.describe Buscamina do 
    it 'Debería mostrar nombre' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        @juego.setNombre('elpepe')
        expect(@juego.getNombre()).to eq('elpepe')
     end
     it 'Debería mostrar posicion 10' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.coordenadaAposicion(2,2)).to eq(10)
     end
     it 'Debería mostrar posicion 46' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.coordenadaAposicion(6,6)).to eq(46)
     end
     it 'Debería mostrar posicion 1' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.coordenadaAposicion(1,1)).to eq(1)
     end
     it 'Debería mostrar la casilla *' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.getCasillaDeTablero(2,2)).to eq("1")
     end
     it 'Debería mostrar tablero' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.getTableroEstatico()).to eq( ["1","1","-","-","1","1","2","*",
                                                    "*","1","-","-","2","*","3","1",
                                                    "1","1","-","-","2","*","3","1",
                                                    "-","-","-","-","1","1","2","*",
                                                    "-","-","-","1","1","1","1","1",
                                                    "1","1","1","2","*","1","-","-",
                                                    "*","2","3","*","3","1","-","-",
                                                    "2","*","3","*","2","-","-","-"])
     end
     
      it 'devuelve tamaño del array estatico' do
         @juego = Buscamina.new
         @juego.inicializarEstatico()
         @tamaño = @juego.getTableroEstatico()
         expect(@tamaño.size()).to eq(64)
      end
   it 'devuelve HTML' do
      @juego = Buscamina.new
         @juego.inicializarEstatico()
        @juego.generarHTMLPersonalizado(2,2)
        
         expect(@juego.generarHTMLPersonalizado(2,2)).to eq("<table border=1 WIDTH=500 HEIGHT=500 ><tr><td><label id=0>1</label></td><td><label id=1>1</label></td></tr><tr><td><label id=2>-</label></td><td><label id=3>-</label></td></tr></table>")
   end
end