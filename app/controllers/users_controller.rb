class UsersController < ApplicationController

  def index
    # raise params.inspect
  end

  def requestSender
    redirect_to ENV['POLAR_AUTHORIZATION_END_POINT'] + ENV['POLAR_CLIENT_ID']
  end

  def polarFlowCallBack
    raise params.inspect
  end

  def oauth2_callback
    authorized_code =  params[:code]
    puts authorized_code
    authorization = 'Basic ' + Base64.encode64((ENV['POLAR_CLIENT_ID']+':'+ ENV['POLAR_CLIENT_SECRET']).to_s).gsub("\n", "")
    puts authorization
    content_type = "application/x-www-form-urlencoded"
    accept = "application/json;charset=UTF-8"


    response = HTTParty.post(
        ENV['POLAR_TOKEN_END_POINT'],
        :headers => {
            'Authorization'     =>authorization,
            "Content-Type"      => content_type,
            "Accept"            => accept
        },
        :data=>{
            "grant_type"        => "authorization_code",
            "code"              => authorized_code,
            "redirect_uri"      => "http://localhost:5000/oauth2_callback"
    }
    )

    raise response.inspect

  end

end
