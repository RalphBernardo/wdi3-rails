R20130211StockMovie::Application.routes.draw do

  get '/' => 'home#index'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/stock' => 'stock#index'
  get '/stock/get_quote'=> 'stock#get_quote'

  get '/movie' => 'movie#index'
  get '/movie/output' => 'movie#output'

end
