class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def new
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)

		@post.save
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
		@comment = Comment.new
	end

	def edit
		@post = Post.find(params[:id])
		
	end

	private

    def post_params
        params.require(:post).permit(:title, :author, :contents)
    end
end
