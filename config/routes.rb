Rails.application.routes.draw do
  root 'url_shortener#home'
  post 'url_shortener/convert', to: 'url_shortener#convert'
  get '/:short_code', to: 'url_shortener#show'
end
