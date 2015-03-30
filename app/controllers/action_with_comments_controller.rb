class ActionWithCommentsController < ApplicationController
  before_action :set_action_with_comment, only: [:show, :edit, :update, :destroy]

  # GET /action_with_comments
  # GET /action_with_comments.json
  def index
    @action_with_comments = ActionWithComment.all
  end

  # GET /action_with_comments/1
  # GET /action_with_comments/1.json
  def show
  end

  # GET /action_with_comments/new
  def new
    @action_with_comment = ActionWithComment.new
  end

  # GET /action_with_comments/1/edit
  def edit
  end

  # POST /action_with_comments
  # POST /action_with_comments.json
  def create
    @action_with_comment = ActionWithComment.new(action_with_comment_params)

    respond_to do |format|
      if @action_with_comment.save
        format.html { redirect_to @action_with_comment, notice: 'Action with comment was successfully created.' }
        format.json { render :show, status: :created, location: @action_with_comment }
      else
        format.html { render :new }
        format.json { render json: @action_with_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_with_comments/1
  # PATCH/PUT /action_with_comments/1.json
  def update
    respond_to do |format|
      if @action_with_comment.update(action_with_comment_params)
        format.html { redirect_to @action_with_comment, notice: 'Action with comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_with_comment }
      else
        format.html { render :edit }
        format.json { render json: @action_with_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_with_comments/1
  # DELETE /action_with_comments/1.json
  def destroy
    @action_with_comment.destroy
    respond_to do |format|
      format.html { redirect_to action_with_comments_url, notice: 'Action with comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_with_comment
      @action_with_comment = ActionWithComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_with_comment_params
      params.require(:action_with_comment).permit(:comment_id)
    end
end
