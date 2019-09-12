require 'omniauth/strategies/oauth2'

OmniAuth.config.add_camelization('moneyforward_invoice', 'MoneyForwardInvoice')

module OmniAuth
  module Strategies
    class MoneyForwardInvoice < OmniAuth::Strategies::OAuth2
      option :client_options,
             site: 'https://invoice.moneyforward.com',
             authorize_url: '/oauth/authorize',
             token_url: '/oauth/token'

      option :name, 'moneyforward_invoice'

      def authorize_params
        super.tap do |params|
          params[:scope] = request.params['scope'] if request.params['scope']
        end
      end
    end
  end
end
