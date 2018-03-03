require 'oauth2'
class UsersController < ApplicationController

  def index
    client_id = "fa1b23a7-55a2-4c28-b053-7c407b49e38e"
    client_secret = "84b86ea4-f375-4f3b-8ec8-3acb6dcf20f1"
    authorize_url = "https://flow.polar.com/oauth2/authorization"
    token_url = "https://polarremote.com/v2/oauth2/token"
    access_link_url = "https://www.polaraccesslink.com/v3"

    # grant = OAUTH2C_CLIENT.authorization_code.authorization_path(redirect_uri:redirect_uri)
    # puts grant.authz_url
    # response.headers['custom-header'] = response_based_on_application
    #
    #
    @client  = OAuth2::Client.new('https://flow.polar.com/oauth2/authorization','fa1b23a7-55a2-4c28-b053-7c407b49e38e','84b86ea4-f375-4f3b-8ec8-3acb6dcf20f1'    )
    # @client  = OAuth2Client::Client.new('https://example.com', 's6BhdRkqt3', '4hJZY88TCBB9q8IpkeualA2lZsUhOSclkkSKw3RXuE')

    x = @client.authorization_code.authorization_path(:redirect_uri => 'http://localhost:3000/oauth2/')

    redirect_to x

  end
end
