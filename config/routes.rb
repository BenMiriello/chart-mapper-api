Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'test', to: 'oauth#test'
    end
  end
end
