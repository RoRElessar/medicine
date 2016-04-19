class CommentsController < ApplicationController
  before_action :set_commented_variables, only: [:create, :destroy]

  def create
    @comment = @commented_object.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.js
      end
    end

  end

  def destroy
      @comment.destroy
  end

  def edit
  end

  def update
    if @comment.update(body: params[:comment][:body])
      respond_to do |format|
        format.js
      end
    end
  end

  private

    def set_commented_variables
      if params[:company_id].present?
        @commented_object = Company.find(params[:company_id])
      elsif params[:doctor_id].present?
        @commented_object = Doctor.find(params[:doctor_id])  
      end
      @comment = Comment.find(params[:id]) if params[:id].present?
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
