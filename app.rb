require 'sinatra'
require './lib/buscamina'
buscaminasTablero=Buscamina.new
get '/' do
    @@namePlayer=params[:namePlayer]
    #buscaminasTablero.inicializarEstatico()
    #buscaminasTablero.inicializarRandomPersonalizado()
    erb :home
end 
get '/Menu' do
    @@namePlayer=params[:namePlayer]
    erb :Menu
end 
get '/IniciarJuegoPersonalizado' do    
    @@tamX=params[:tam_x]
    @@tamY=params[:tam_y]
     buscaminasTablero.inicializarRandomPersonalizado(@@tamX.to_i,@@tamY.to_i)
     @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
     erb :tableroPersonalizado
end
get '/IniciarJuegoEstatico' do
    
    buscaminasTablero.inicializarEstatico()
    @tableroHTML=buscaminasTablero.generarHTMLEstatico()
    erb :tableroEstatico
end
get '/ElegirCasillaEstatico' do
    coordX=params[:coord_x]
    coordY=params[:coord_y]
    @tableroHTML=buscaminasTablero.generarHTMLEstatico()
    erb :tableroEstatico

end
get '/ElegirCasillaPersonalizado' do
    coordX=params[:coord_x]
    coordY=params[:coord_y]
    @casillas=buscaminasTablero.getTableroRandomPersonalizado()
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
    erb :tableroPersonalizado

end
get '/ReiniciarEstatico' do
    buscaminasTablero.inicializarEstatico()
    @casillas=buscaminasTablero.getTableroEstatico()
    @tableroHTML=buscaminasTablero.generarHTMLEstatico()
    erb :tableroEstatico
end

get '/ReiniciarPersonalizado' do
    buscaminasTablero.inicializarRandomPersonalizado(@@tamX.to_i,@@tamY.to_i)
    @casillas=buscaminasTablero.getTableroRandomPersonalizado()
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
    erb :tableroPersonalizado
end

