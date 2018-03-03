class UsersController < ApplicationController

  def index
    raise params.inspect
  end

  def requestSender
    client_id = "e738c519-21a7-42d9-aae6-987d603d1d58"
    client_secret = "0944cc38-ac3c-4ade-b472-87a9c1b15586"
    redirect_url = 'http://localhost:3000/users/'

    redirect_to 'https://flow.polar.com/oauth2/authorization?response_type=code&client_id=' + client_id + '&redirect_uri=' + polarFlowCallBack

    # authorize_url = "https://flow.polar.com/oauth2/authorization"
    # token_url = "https://polarremote.com/v2/oauth2/token"
    # access_link_url = "https://www.polaraccesslink.com/v3"

    # grant = OAUTH2C_CLIENT.authorization_code(state: "STATE")
    # puts grant.authz_url
    # # response.headers['custom-header'] = response_based_on_application
    # redirect_to grant.authz_url
  end

  def polarFlowCallBack
    raise params.inspect
  end

end
