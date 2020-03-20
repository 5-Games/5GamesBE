class ApplicationController < ActionController::API
  
  # Need to hide the secret in an ENV file for production:
  # https://www.viget.com/articles/storing-secret-credentials-in-rails-5-2-and-up/
  def secret
    ENV['JWTsecret']
  end

end
