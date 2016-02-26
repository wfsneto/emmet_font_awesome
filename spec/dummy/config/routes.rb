Rails.application.routes.draw do
  root to: 'home#index'

  mount EmmetFontAwesome::Engine => "/emmet_font_awesome"
end
