class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

def search
  if params[:primary_color].empty?
    if params[:secondary_color].empty?
      if params[:mood].empty?
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.all
            else
              @images = Image.where({:artwork_title => params[:artwork_title]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme]})
            end
          end
        end
      else
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:mood => params[:mood]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :mood => params[:mood]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :mood => params[:mood]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :mood => params[:mood]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :mood => params[:mood]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :mood => params[:mood]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood]})
            end
          end
        end
      end
    else
      if params[:mood].empty?
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :secondary_color => params[:secondary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :secondary_color => params[:secondary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :secondary_color => params[:secondary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :secondary_color => params[:secondary_color]})
            end
          end
        end
      else
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:mood => params[:mood], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color]})
            end
          end
        end
      end
    end
  else
    if params[:secondary_color].empty?
      if params[:mood].empty?
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :primary_color => params[:primary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :primary_color => params[:primary_color]})
            end
          end
        end
      else
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:mood => params[:mood], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :mood => params[:mood], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :mood => params[:mood], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :mood => params[:mood], :primary_color => params[:primary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :mood => params[:mood], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :mood => params[:mood], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :primary_color => params[:primary_color]})
            end
          end
        end
      end
    else
      if params[:mood].empty?
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          end
        end
      else
        if params[:theme].empty?
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          end
        else
          if params[:artist].empty?
            if params[:artwork_title].empty?
              @images = Image.where({:theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          else
            if params[:artwork_title].empty?
              @images = Image.where({:artist => params[:artist], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            else
              @images = Image.where({:artist => params[:artist], :artwork_title => params[:artwork_title], :theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
            end
          end
        end
      end
    end
  end
end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def my_likes
    @images = current_user.liked_images
    @like = Like.all
  end

  def create
    @image = Image.new
    @image.image_name = params[:image_name]
    @image.artwork_title = params[:artwork_title]
    @image.image_url = params[:image_url]
    @image.artist = params[:artist]
    @image.theme = params[:theme]
    @image.mood = params[:mood]
    @image.primary_color = params[:primary_color]
    @image.secondary_color = params[:secondary_color]
    @image.user_id = params[:user_id]


    if @image.save
      redirect_to "/images", :notice => "Image created successfully."
    else
      render 'new'
    end
  end


  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    @image.image_name = params[:image_name]
    @image.artwork_title = params[:artwork_title]
    @image.image_url = params[:image_url]
    @image.artist = params[:artist]
    @image.theme = params[:theme]
    @image.mood = params[:mood]
    @image.primary_color = params[:primary_color]
    @image.secondary_color = params[:secondary_color]

    if @image.save
      redirect_to "/images", :notice => "Image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @image = Image.find(params[:id])

    @image.destroy

    redirect_to "/images", :notice => "Image deleted."
  end
end
