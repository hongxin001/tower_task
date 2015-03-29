class ActionOneParametersController < ApplicationController
  before_action :set_action_one_parameter, only: [:show, :edit, :update, :destroy]

  # GET /action_one_parameters
  # GET /action_one_parameters.json
  def index
    @action_one_parameters = ActionOneParameter.all
  end

  # GET /action_one_parameters/1
  # GET /action_one_parameters/1.json
  def show
  end

  # GET /action_one_parameters/new
  def new
    @action_one_parameter = ActionOneParameter.new
  end

  # GET /action_one_parameters/1/edit
  def edit
  end

  # POST /action_one_parameters
  # POST /action_one_parameters.json
  def create
    @action_one_parameter = ActionOneParameter.new(action_one_parameter_params)

    respond_to do |format|
      if @action_one_parameter.save
        format.html { redirect_to @action_one_parameter, notice: 'Action one parameter was successfully created.' }
        format.json { render :show, status: :created, location: @action_one_parameter }
      else
        format.html { render :new }
        format.json { render json: @action_one_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_one_parameters/1
  # PATCH/PUT /action_one_parameters/1.json
  def update
    respond_to do |format|
      if @action_one_parameter.update(action_one_parameter_params)
        format.html { redirect_to @action_one_parameter, notice: 'Action one parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_one_parameter }
      else
        format.html { render :edit }
        format.json { render json: @action_one_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_one_parameters/1
  # DELETE /action_one_parameters/1.json
  def destroy
    @action_one_parameter.destroy
    respond_to do |format|
      format.html { redirect_to action_one_parameters_url, notice: 'Action one parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_one_parameter
      @action_one_parameter = ActionOneParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_one_parameter_params
      params.require(:action_one_parameter).permit(:parameter)
    end
end
