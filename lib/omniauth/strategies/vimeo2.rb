require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vimeo2 < OmniAuth::Strategies::OAuth2
      option :name, 'vimeo2'

      option :client_options, {
        :site => "https://api.vimeo.com",
        :request_token_url => "/oauth/request_token",
        :authorize_url => "/oauth/authorize",
        :access_token_path => "/oauth/access_token"
      }

      #TODO
      #params
    end
  end
end
