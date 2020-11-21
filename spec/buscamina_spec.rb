require 'buscamina'
RSpec.describe Buscamina do 
    it 'debería mostrar nombre' do
        @juego = Buscamina.new
        @juego.inicializar()
        @juego.setNombre('elpepe')
        expect(@juego.getNombre()).to eq('elpepe')
     end
     it 'debería mostrar posicion 10' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(2,2)).to eq(10)
     end
     it 'debería mostrar posicion 46' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(6,6)).to eq(46)
     end
     it 'debería mostrar posicion ' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.coordenadaAposicion(1,1)).to eq(1)
     end
     it 'debería mostrar la casilla ' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.getCasillaDeTablero(2,2)).to eq("*")
     end
     it 'debería mostrar tablero' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.getTablero()).to eq([0, "*"," "," ","*",1," "," ",
                                            " ","*",2,1,1,1," "," ",
                                            3," ",2," "," "," "," "," ",
                                            "*","*",1," "," "," ",1,1,
                                            2,2,1," "," "," ",1,"*",
                                            " "," "," "," ",1,2,3," ",
                                            1,2,1,1,1,"*","*"," ",
                                            "*"," ","*"," ",1," "," ",1])
     end
     it 'debería verificar la casilla sea diferente 0(oculta)' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.verificarCasilla(2,2)).to eq(true)
     end
     it 'debería verificar la casilla este abierta' do
        @juego = Buscamina.new
        @juego.inicializar()
        expect(@juego.verificarCasilla(1,1)).to eq(false)
     end
end