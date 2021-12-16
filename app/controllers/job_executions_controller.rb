class JobExecutionsController < ApplicationController
  before_action :find_job_executions, only: %i[index]
  
  def index

  end

  def new
    @job_execution = JobExecution.new
    byebug
  end

  def create
    # @test = current_user.created_tests.new(test_params)
    # if @test.save
    #   redirect_to admin_tests_path, notice: t('.success')
    # else 
    #   render :new
    # end
  end

  private

  def find_job_executions
    @job_executions = JobExecution.all
  end
end
