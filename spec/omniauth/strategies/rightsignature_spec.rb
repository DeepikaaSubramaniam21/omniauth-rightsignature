require 'spec-helper'
require 'omniauth-rightsignature'

describe Omniauth::Strategies::Rightsignature do 

	context "client_options" do
		subject do
			OmniAuth::Strategies::Rightsignature.new({})
		end

		it 'should have the correct site' do
			expect(subject.options.client_options.site).to eq("https://rightsignature.com")
		end
		
		it 'should have the correct authorizate url' do
			expect(subject.options.client_options.authorize_url).to eq("https://rightsignature.com/oauth/authorize")
		end
		
		it 'should have the correct access token url' do
			expect(subject.options.client_options.access_token_path).to eq("https://rightsignature.com/oauth/access_token")
		end	
  	end
end