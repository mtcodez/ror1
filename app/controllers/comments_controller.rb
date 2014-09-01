class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		if @comment.save
			redirect_to @post, notice: "Comment created."
		end
	end

	def edit
	end
	
	private

    def comment_params
        params.require(:comment).permit(:title, :author, :contents)
    end
end
