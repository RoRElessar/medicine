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

  end

  private

    def set_commented_variables
      if params[:company_id].present?
        @commented_object = Company.find(params[:company_id])
      elsif params[:doctor_id].present?
        @commented_object = Doctor.find(params[:doctor_id])
      end
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
