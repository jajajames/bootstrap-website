class PostsController < ApplicationController

def index
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
end

end
