require 'sinatra'
require './lib/buscamina'
buscaminasTablero=Buscamina.new
get '/' do
    @@namePlayer=params[:namePlayer]
    buscaminasTablero.inicializar()
    @casillaDesbloqueada=buscaminasTablero.getCasillaDesbloqueada()
    @casillas=buscaminasTablero.getTablero()
    erb :home
end  
get '/getNombre' do

    @@namePlayer=params[:namePlayer]
    @casillaDesbloqueada=buscaminasTablero.getCasillaDesbloqueada()
     @casillas=buscaminasTablero.getTablero()
     erb :tablero
end
get '/elegirCasillas' do
    @@namePlayer=params[:namePlayer]

    coordX=params[:coord_x]
    coordY=params[:coord_y]
    buscaminasTablero.verificarCasilla(coordX.to_i, coordY.to_i)
    @casillaDesbloqueada=buscaminasTablero.getCasillaDesbloqueada()
    @casillas=buscaminasTablero.getTablero()
    erb :tablero

end
get '/reiniciar' do
    @@namePlayer=params[:namePlayer]

    buscaminasTablero.inicializar()
    @casillas=buscaminasTablero.getTablero()
    erb :tablero
end

