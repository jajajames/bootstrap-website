class PostsController < ApplicationController

def index
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
end

def show
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
  @post = @posts.first
end

end
