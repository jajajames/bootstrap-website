class PostsController < ApplicationController

def index
  @posts = Post.all
  @first_post = @posts.first
end

end
