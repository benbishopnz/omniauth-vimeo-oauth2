require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Vimeo2 < OmniAuth::Strategies::OAuth2
      option :name, 'vimeo2'

      option :client_options, {
        :site => "https://api.vimeo.com",
        :request_token_url => "/oauth/request_token",
        :authorize_url => "/oauth/authorize",
        :token_url => "/oauth/access_token",
      }

      uid { raw_info['uri'].gsub('/users/', '') }

      # https://developer.vimeo.com/api/endpoints/users#/users/+user_id
      info do
        {
          name: raw_info['name'],
          uri: raw_info['uri'],
          link: raw_info['link'],
          location: raw_info['location'],
          bio: raw_info['bio'],
          created_time: raw_info['created_time']
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/me').body)
      end
    end
  end
end
