Rails.application.routes.draw do
  #https://guides.rubyonrails.org/routing.html#using-root
  #The root route only routes GET requests to the action.
  root to: "welcome#home"


  #provide a route for the providers' strategies to "call back" to after 
  #the authenticating third-party decides whether the user has passed or failed authentication.
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  # Add your routes here
end
