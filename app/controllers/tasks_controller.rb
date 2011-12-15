class TasksController < ApplicationController
  before_filter :authenticate_user!, :find_project
  def create
    @task = @project.tasks.new(params[:task])
    # @task.user_id = params[:task]["user_id"]
    respond_to do |format|  
      if @task.save
        #format.html { redirect_to destination_path(@destination) } 
        format.js
      end
    end
  end
  def destroy
    
  end
  private 
  def find_project
    @project = Project.find(params[:project_id])
  end
end
