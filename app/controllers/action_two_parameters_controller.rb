class ActionTwoParametersController < ApplicationController
  before_action :set_action_two_parameter, only: [:show, :edit, :update, :destroy]

  # GET /action_two_parameters
  # GET /action_two_parameters.json
  def index
    @action_two_parameters = ActionTwoParameter.all
  end

  # GET /action_two_parameters/1
  # GET /action_two_parameters/1.json
  def show
  end

  # GET /action_two_parameters/new
  def new
    @action_two_parameter = ActionTwoParameter.new
  end

  # GET /action_two_parameters/1/edit
  def edit
  end

  # POST /action_two_parameters
  # POST /action_two_parameters.json
  def create
    @action_two_parameter = ActionTwoParameter.new(action_two_parameter_params)

    respond_to do |format|
      if @action_two_parameter.save
        format.html { redirect_to @action_two_parameter, notice: 'Action two parameter was successfully created.' }
        format.json { render :show, status: :created, location: @action_two_parameter }
      else
        format.html { render :new }
        format.json { render json: @action_two_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_two_parameters/1
  # PATCH/PUT /action_two_parameters/1.json
  def update
    respond_to do |format|
      if @action_two_parameter.update(action_two_parameter_params)
        format.html { redirect_to @action_two_parameter, notice: 'Action two parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_two_parameter }
      else
        format.html { render :edit }
        format.json { render json: @action_two_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_two_parameters/1
  # DELETE /action_two_parameters/1.json
  def destroy
    @action_two_parameter.destroy
    respond_to do |format|
      format.html { redirect_to action_two_parameters_url, notice: 'Action two parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_two_parameter
      @action_two_parameter = ActionTwoParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_two_parameter_params
      params.require(:action_two_parameter).permit(:parameter_1, :parameter_2)
    end
end
