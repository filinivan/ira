class JobExecutionsController < ApplicationController
  before_action :find_job_executions, only: %i[index]
  
  def index

  end

  def new
    @division = Division.all
    @job_execution = JobExecution.new
  end

  def create
    @new_job = JobExecution.new(job_execution_params)
    if @new_job.save
    else 
      render :new
    end
  end

  private

  def find_job_executions
    @job_executions = JobExecution.all
  end

  def job_execution_params
    params.require(:job_execution).permit(:explanation, :urgent, :division_id, :user_id, :job_id )
  end
end
