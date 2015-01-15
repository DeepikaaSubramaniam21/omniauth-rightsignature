# oa-oauth/lib/omniauth/strategies/rdio.rb
require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    #
    # Authenticate to RightSignature via OAuth and retrieve basic user information.
    # Usage:
    #    use OmniAuth::Strategies::RightSignature, 'consumerkey', 'consumersecret'
    #
    class Rightsignature < OmniAuth::Strategies::OAuth
      args [:consumer_key, :consumer_secret]
      option :client_options, {
        :site               => 'https://rightsignature.com',
        :request_token_path => '/oauth/request_token',
        :access_token_path  => '/oauth/access_token',
        :authorize_url      => 'https://rightsignature.com/oauth/authorize' 
      }
      option :name, 'rightsignature'
      
      uid {access_token.params['user_id']}
      
      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }  
      end  

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('https://rightsignature.com/api/users/user_details.json').body)
           
      end  
    end
  end
end