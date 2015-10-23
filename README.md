# OmniAuth::MoneyForward::Invoice

OmniAuth OAuth2 strategy for [MF Cloud Invoice (MFクラウド請求書) API](https://github.com/moneyforward/invoice-api-doc)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-moneyforward-invoice'
```

And then execute:

    $ bundle

## Usage

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :moneyforward_invoice, ENV['MF_INVOICE_CLIENT_ID'], ENV['MF_INVOICE_CLIENT_SECRET'], scope: 'write'
end
```

'scope' option is optional. You can specify/overwite scope option by including it in authorization request as query parameter.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
