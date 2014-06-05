# OmniauthVimeoOauth2

An Omniauth strategy for Vimeo

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-vimeo-oauth2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-vimeo-oauth2

## Usage

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vimeo2, VIMEO_CREDENTIALS['client_id'], VIMEO_CREDENTIALS['client_secret'],
           scope: 'public private'
end
```

### Available scopes
- *public*	View public videos
- *private*	View private videos
- *create*	Create new videos, groups, albums, etc.
- *edit*	Edit videos, groups, albums, etc.
- *delete*	Delete videos, groups, albums, etc.
- *interact*	Interact with a video on behalf of a user, such as liking a video or adding it to your watch later queue
- *upload*	Upload a video

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
