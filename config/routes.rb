Rails.application.routes.draw do
  resources :songs
  get 'songs_by_status', to: 'songs#status_sort'
  get 'songs_by_date', to: 'songs#date_sort'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
