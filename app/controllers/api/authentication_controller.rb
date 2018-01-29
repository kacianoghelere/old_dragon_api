class API::AuthenticationController < ApplicationController

  def authenticate
    user = User.find_for_authentication(email: params[:email])
    print params
    if user && user.authenticate(params[:password])
      user.register_log_in
      render json: payload(user)
    else
      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    end
  end

  private

    def payload(user)
      return nil unless user and user.id
      {
        auth_token: JsonWebToken.encode({user_id: user.id}),
        user: UserSerializer.new(user)
      }
    end
end
