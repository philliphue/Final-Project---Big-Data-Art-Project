class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def show
    @like = Like.find(params[:id])
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new
    @like.user_id = current_user.id
    @like.image_id = params[:image_id]

    if @like.save
      redirect_to :back, :notice => "Like created successfully."
    else
      redirect_to :back, :notice => "Like failed."
    end
  end

  def edit
    @like = Like.find(params[:id])
  end

  def update
    @like = Like.find(params[:id])

    @like.user_id = params[:user_id]
    @like.image_id = params[:image_id]

    if @like.sa ve
      redirect_to "/likes", :notice => "Like updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @like = Like.where({:image_id => params[:id]}).first

    @like.destroy

      redirect_to :back, :notice => "Like removed."
  end
end
