class ProjectsController < ApplicationController

  def index
    @projects = Project.all.order('created_at DESC')
  end

  def create
    @projects = Project.create(
      name: params[:name],
      description: params[:description],
      start_date: params[:start_date],
      end_date: params[:end_date],
      state: params[:state]
    )
  end

end
