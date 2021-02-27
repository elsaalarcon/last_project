Rails.application.routes.draw do
  root 'students#index'
  resources :students
  # I spend four hours searching for a bug, when I try to delete a resource
  # and the bug was in the line three, I wrote resource instead of resources
end
