class Api::V1::StatesController < Api::V1::ApiController
  skip_before_action :verify_authenticity_token
  before_action :check_api_key

  #uri = api/v1/states
  def index
    @user = User.find_by(api_key: params[:api_key])
    @states = State.all
  end

  def create
    @state = State.new(state_params)
    @state.save
  end

  #uri = api/v1/state/:id_or_code
  def show
    @state = State.find_by(code: params[:id].upcase)
  end

  def update
    @state = State.find_by(code: params[:id].upcase)
    if !@state.nil?
      @state.update_attributes(state_params)
    end
  end

  def destroy
    @state = State.find_by(code: params[:id].upcase)
    unless @state.nil?
      @state.destroy
    end
  end

  def find
    @state = State.find_by(code: params[:code].upcase)
  end

  private

  def state_params
    params[:state].permit(:name, :code)
  end

end
