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
            'Content-Type'      => content_type,
            'Accept'            => accept
        },
        :body => {
            'grant_type'        => "authorization_code",
            'code'              => authorized_code
    }
    )

    access_token = response.parsed_response['access_token'].to_s
    token_type = response.parsed_response['token_type']
    expires_in = response.parsed_response['expires_in']
    x_user_id = response.parsed_response['x_user_id'].to_s




    result = HTTParty.post("https://www.polaraccesslink.com/v3/users",
                          :headers=>{
                              'Authorization'     =>access_token,
                              'Content-Type' => 'application/xml',
                              'Accept' => 'application/json'},
                          :body =>{"member-id"=> "id_#{x_user_id}"}

                           )

    raise result.inspect





  end

end
