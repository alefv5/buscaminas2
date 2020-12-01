require 'sinatra'
require './lib/buscamina'
buscaminasTablero=Buscamina.new
get '/' do
    @@namePlayer=params[:namePlayer]
    erb :home
end 
get '/Menu' do
    @@namePlayer=params[:namePlayer]
    erb :Menu
end 
get '/IniciarJuegoPersonalizado' do    
    @@tamX=params[:tam_x]
    @@tamY=params[:tam_y]
     buscaminasTablero.inicializarEstatico()
     @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
     erb :tableroPersonalizado
end
get '/IniciarJuegoEstatico' do
    
    buscaminasTablero.inicializarEstatico()
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(8,8)
    erb :tableroEstatico
end
get '/ElegirCasillaEstatico' do
    coordX=params[:coord_x]
    coordY=params[:coord_y]
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(8,8)
    erb :tableroEstatico

end
get '/ElegirCasillaPersonalizado' do
    coordX=params[:coord_x]
    coordY=params[:coord_y]
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
    erb :tableroPersonalizado

end
get '/ReiniciarEstatico' do
    buscaminasTablero.inicializarEstatico()
    buscaminasTablero.getTableroEstatico()
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(8,8)
    erb :tableroEstatico
end

get '/ReiniciarPersonalizado' do
    @tableroHTML=buscaminasTablero.generarHTMLPersonalizado(@@tamX.to_i,@@tamY.to_i)
    erb :tableroPersonalizado
end

