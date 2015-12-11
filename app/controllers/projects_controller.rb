class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project_images = ProjectImage.all
  end

  def search
    if params[:primary_color].empty?
      if params[:secondary_color].empty?
        if params[:mood].empty?
          if params[:theme].empty?
            @projects = Project.all
          else
            @projects = Project.where({:theme => params[:theme]})
          end
        else
          if params[:theme].empty?
            @projects = Project.where({:mood => params[:mood]})
          else
            @projects = Project.where({:theme => params[:theme], :mood => params[:mood]})
          end
        end
      else
        if params[:mood].empty?
          if params[:theme].empty?
            @projects = Project.where({:secondary_color => params[:secondary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :secondary_color => params[:secondary_color]})
          end
        else
          if params[:theme].empty?
            @projects = Project.where({:mood => params[:mood], :secondary_color => params[:secondary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color]})
          end
        end
      end
    else
      if params[:secondary_color].empty?
        if params[:mood].empty?
          if params[:theme].empty?
            @projects = Project.where({:primary_color => params[:primary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :primary_color => params[:primary_color]})
          end
        else
          if params[:theme].empty?
            @projects = Project.where({:mood => params[:mood], :primary_color => params[:primary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :mood => params[:mood], :primary_color => params[:primary_color]})
          end
        end
      else
        if params[:mood].empty?
          if params[:theme].empty?
            @projects = Project.where({:secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
          end
        else
          if params[:theme].empty?
            @projects = Project.where({:mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
          else
            @projects = Project.where({:theme => params[:theme], :mood => params[:mood], :secondary_color => params[:secondary_color], :primary_color => params[:primary_color]})
          end
        end
      end
    end

      @project_images = ProjectImage.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.project_title = params[:project_title]
    @project.theme = params[:theme]
    @project.mood = params[:mood]
    @project.primary_color = params[:primary_color]
    @project.secondary_color = params[:secondary_color]
    @project.project_template = params[:project_template]
    @project.private = params[:private]
    @project.user_id = params[:user_id]

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.project_title = params[:project_title]
    @project.theme = params[:theme]
    @project.mood = params[:mood]
    @project.primary_color = params[:primary_color]
    @project.secondary_color = params[:secondary_color]
    @project.project_template = params[:project_template]
    @project.private = params[:private]

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
