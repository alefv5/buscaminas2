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
        expect(@juego.getCasillaDeTablero(2,2)).to eq("*")
     end
     it 'Debería mostrar tablero' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.getTableroEstatico()).to eq(["-","*","2"," ","*","1","-","-",
        "-","*","2","1","1","1","-","-",
        "3","-","2","-","-","-","-","-",
        "*","*","1","-","-","-","1","1",
        "2","2","1","-","-","-","1","*",
        " ","-"," ","-","1","2","3","-",
        "1","2","1","1","1","*","*","-",
        "*","-","*","-","1","-","-","1"])
     end
     
      it 'devuelve tamaño del array estatico' do
         @juego = Buscamina.new
         @juego.inicializarEstatico()
         @tamaño = @juego.getTableroEstatico()
         expect(@tamaño.size()).to eq(64)
      end
      it 'devuelve tamaño del array random' do
         @juego = Buscamina.new
         @juego.inicializarRandomPersonalizado(2,2)
         @tamaño = @juego.getTableroRandomPersonalizado()
         expect(@tamaño.size()).to eq(4)
      end
   
   end