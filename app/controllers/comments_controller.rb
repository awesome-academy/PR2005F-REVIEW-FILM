class CommentsController < ApplicationController

	def create
		
		# comment_duty = comment_params[:cmt_duty_type].constantize.find_by id: comment_params[:cmt_duty_id]
		@comment = current_user.comments.build(comment_params)
		# @comment.user = current_user
		if @comment.save
	     #ajax----------------------------
        flash[:danger] = "Created"
        respond_to do |format|
          format.html {redirect_to @comment.cmt_duty}
          format.js
        end
        #ajax----------------------------
      end
	end
	private
	def comment_params
		params.require(:comment).permit(:content, :user_id, :cmt_duty_type, :cmt_duty_id)
	end
end