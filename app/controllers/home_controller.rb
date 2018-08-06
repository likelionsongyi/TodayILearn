class HomeController < ApplicationController
  def index
    @comments=Comment.all
  end
  def create
    @comment = Comment.new(body: params[:body])
    @comment.save
    redirect_to :back
  end

end
