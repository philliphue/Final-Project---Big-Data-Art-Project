class ProjectImagesController < ApplicationController
  def index
    @project_images = ProjectImage.all
  end

  def show
    @project_image = ProjectImage.find(params[:id])
  end

  def new
    @project_image = ProjectImage.new
  end

  def create
    @project_image = ProjectImage.new
    @project_image.project_id = params[:project_id]
    @project_image.user_id = params[:user_id]
    @project_image.image_url = params[:image_url]
    @project_image.image_id = params[:image_id]

    if @project_image.project_id.present?
      if @project_image.save
        redirect_to "/projects/#{@project_image.project_id}", :notice => "Image added successfully."
      else
        render 'new'
      end
    else
      redirect_to :back, :notice => "Failed.  Must select project.  To create a new project, click the Projects link above."
    end
  end

  def edit
    @project_image = ProjectImage.find(params[:id])
  end

  def update
    @project_image = ProjectImage.find(params[:id])

    @project_image.image_id = params[:image_id]
    @project_image.project_id = params[:project_id]

    if @project_image.save
      redirect_to "/project_images", :notice => "Project image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project_image = ProjectImage.find(params[:id])

    @project_image.destroy

    redirect_to :back, :notice => "Project image deleted."
  end
end
