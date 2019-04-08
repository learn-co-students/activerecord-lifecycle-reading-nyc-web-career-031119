class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(params)
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(posts_params)
	  redirect_to post_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end

	def make_title_case
    self.title = self.title.titlecase
  end

	def posts_params
		params.require(:post).permit(:title, :description)
	end
end
