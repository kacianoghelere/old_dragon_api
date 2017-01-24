class AuthenticationController < ApplicationController

  def authenticate
    user = User.find_for_authentication(email: params[:email])
    if user && user.authenticate(params[:password])
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
        user: {
          admin: user.is_admin?,
          email: user.email,
          id: user.id,
          name: user.name
        }
      }
    end
end
