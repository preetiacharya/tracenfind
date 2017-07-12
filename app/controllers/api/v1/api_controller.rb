class Api::V1::ApiController < ApplicationController

  def check_api_key
    if params[:api_key]
      @user = User.find_by(api_key: params[:api_key])
      if @user.nil?
        render '/api/v1/errors/user_error.json.rabl'
      elsif @user.credit > 85
        #@user.credit -= 1 #@user.credit = @user.credit - 1
        @user.update_attributes(credit: @user.credit - 1)
      else
        render '/api/v1/errors/insufficient_credits_error.json.rabl'
      end
    else
      render '/api/v1/errors/api_error.json.rabl'
    end
  end

end
