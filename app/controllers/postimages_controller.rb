class PostimagesController < ApplicationController

  def new
    @post_image = PostImage.new
  end
end
