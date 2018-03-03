class UsersController < ApplicationController

  def index
    client_id = "fa1b23a7-55a2-4c28-b053-7c407b49e38e"
    client_secret = "84b86ea4-f375-4f3b-8ec8-3acb6dcf20f1"
    authorize_url = "https://flow.polar.com/oauth2/authorization"
    token_url = "https://polarremote.com/v2/oauth2/token"
    access_link_url = "https://www.polaraccesslink.com/v3"

    grant = OAUTH2C_CLIENT.authorization_code(state: "STATE")
    puts grant.authz_url
    # response.headers['custom-header'] = response_based_on_application
    redirect_to grant.authz_url

  end
end
