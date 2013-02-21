R20130211Routing::Application.routes.draw do
  get '/home' => 'home#homepage'
  get '/gotoA' => 'home#gotoA'
  get '/gotoB' => 'home#gotoB'

  get '/form' => 'home#form'

  get '/one' => 'home#one'
  get '/two' => 'home#two'
  get '/three' => 'home#three'

  root :to => 'home#homepage'

end
