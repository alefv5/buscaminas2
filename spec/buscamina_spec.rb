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
        expect(@juego.getTableroEstatico()).to eq([" ","*","2"," ","*","1"," "," ",
                                                   " ","*","2","1","1","1"," "," ",
                                                   "3"," ","2"," "," "," "," "," ",
                                                   "*","*","1"," "," "," ","1","1",
                                                   "2","2","1"," "," "," ","1","*",
                                                   " "," "," "," ","1","2","3"," ",
                                                   "1","2","1","1","1","*","*"," ",
                                                   "*"," ","*"," ","1"," "," ","1"])
     end
<<<<<<< HEAD

     it 'deberia mostrar tamaño cadena de generarHTMLPersonalizado para X=4 y Y=4' do
      @juego = Buscamina.new
      expect(@juego.getHTMLtamañoPersonalizado(4,4)).to eq(16)
      end
      it 'deberia mostrar tamaño cadena de generarHTMLPersonalizado para X=7 y Y=5' do
         @juego = Buscamina.new
         expect(@juego.getHTMLtamañoPersonalizado(4,8)).to eq(32)
         end
=======
     it 'Debería verificar la casilla para el cambio de color ' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.verificarCasilla(2,2)).to eq(10)
     end
     it 'Debería verificar la casilla para el cambio de color ' do
        @juego = Buscamina.new
        @juego.inicializarEstatico()
        expect(@juego.verificarCasilla(1,1)).to eq(1)
     end
     #it 'deberia mostrar cadena de generarHTMLPersonalizado para X=2 y Y=2' do
     #@juego = Buscamina.new
      #expect(@juego.generarHTMLPersonalizado(2,2)).to eq("<table border=""1"" WIDTH=""500"" HEIGHT=""500""><tr><th></th><th></th></tr><tr><th></th><th></th></tr></table>")
     # end
     # it 'deberia mostrar cadena de generarHTMLPersonalizado para X=4 y Y=2' do
        # @juego = Buscamina.new
         #expect(@juego.generarHTMLPersonalizado(4,2)).to eq("<table border=""1"" WIDTH=""500"" HEIGHT=""500""><tr><th></th><th></th><th></th><th></th></tr><tr><th></th><th></th><th></th><th></th></tr></table>")
         #end
>>>>>>> df5f4205cd01dc8305ed80d29b5f6ff07eae7075
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
      it 'devuelve matriz estatica' do
         @juego = Buscamina.new
         @juego.inicializarEstatico()
         expect(@juego.getTableroEstatico()).to eq("<table border=""1"" width=""500"" height=""500""><tr><td><label id=""0"">2</label></td><td><label id=""1"">*</label></td><td><label id=""2"">2</label></td><td><label id=""3""> </label></td><td><label id=""4"">*</label></td><td><label id=""5"">1</label></td><td><label id=""6""> </label></td><td><label id=""7""> </label></td></tr><tr><td><label id=""8"">2</label></td><td><label id=""9"">*</label></td><td><label id=""10"">2</label></td><td><label id=""11"">1</label></td><td><label id=""12"">1</label></td><td><label id=""13"">1</label></td><td><label id=""14""> </label></td><td><label id=""15""> </label></td></tr><tr><td><label id=""16"">3</label></td><td><label id=""17""> </label></td><td><label id=""18"">2</label></td><td><label id=""19""> </label></td><td><label id=""20""> </label></td><td><label id=""21""> </label></td><td><label id=""22""> </label></td><td><label id=""23""> </label></td></tr><tr><td><label id=""24"">*</label></td><td><label id=""25"">*</label></td><td><label id=""26"">1</label></td><td><label id=""27""> </label></td><td><label id=""28""> </label></td><td><label id=""29""> </label></td><td><label id=""30"">1</label></td><td><label id=""31"">1</label></td></tr><tr><td><label id=""32"">2</label></td><td><label id=""33"">2</label></td><td><label id=""34"">1</label></td><td><label id=""35""> </label></td><td><label id=""36""> </label></td><td><label id=""37""> </label></td><td><label id=""38"">1</label></td><td><label id=""39"">*</label></td></tr><tr><td><label id=""40""> </label></td><td><label id=""41""> </label></td><td><label id=""42""> </label></td><td><label id=""43""> </label></td><td><label id=""44"">1</label></td><td><label id=""45"">2</label></td><td><label id=""46"">3</label></td><td><label id=""47""> </label></td></tr><tr><td><label id=""48"">1</label></td><td><label id=""49"">2</label></td><td><label id=""50"">1</label></td><td><label id=""51"">1</label></td><td><label id=""52"">1</label></td><td><label id=""53"">*</label></td><td><label id=""54"">*</label></td><td><label id=""55""> </label></td></tr><tr><td><label id=""56"">*</label></td><td><label id=""57""> </label></td><td><label id=""58"">*</label></td><td><label id=""59""> </label></td><td><label id=""60"">1</label></td><td><label id=""61""> </label></td><td><label id=""62""> </label></td><td><label id=""63"">1</label></td></tr></table>")
      end
      
   end