OmniAuth RightSignature
================

This gem is an OmniAuth 1.0 Strategy for the [RightSignature API](https://rightsignature.com/api)

It supports RightSignature API which uses OAuth 1.0a.

Usage
-----

Add the strategy to your `Gemfile` alongside OmniAuth:

```ruby
gem 'omniauth'
gem 'omniauth-rightsignature'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :rightsignature, 'oAuthKey', 'oAuth Secret'
end
```

In Rails, you'll want to add to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :rightsignature, 'oAuthKey', 'oAuth Secret'
end
```

You will have to put in your consumer key and secret (RightSignature refers to them as oAuth Key and oAuth Secret in https://rightsignature.com/oauth_clients).

For additional information, refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).