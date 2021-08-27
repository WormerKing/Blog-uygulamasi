class PostController < ApplicationController
	def index
		@all = Post.all
	end
	def all_posts
		@all = Post.all
	end
	def new
		@post = Post.new
	end
	def show
		@post = Post.find(params[:id])
	end
	def create
		@post = Post.new(params.require(:post).permit!)
		@post.date = Time.now
		if @post.save
			redirect_to(root_path)
		else
			render partial:"partials/post_error",locals:{error:@post.errors.full_messages}
		end
	end	
end
