Rails.application.routes.draw do
  mount Commander::Engine => '/commander', as: :commander
end
