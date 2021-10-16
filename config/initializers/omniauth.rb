# The name "initializer" suggests that they're used to set up Rails when we start it. 
#Tells Rails application to useOmniAuth::Builder which adds providers.
#Provider = authenticating 3rd party - Google, Facebook, Github etc  - Each provider has a strategy



Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
    # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  end