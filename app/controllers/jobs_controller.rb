class JobsController < ApplicationController
  def index
      jobs = Job.all
      jobs_json = jobs.as_json
      jobs_json.each_with_index do |job, index|
          job[:boats] = jobs[index].boats
      end
      render json: jobs_json
  end

  def show
  end

  def create
      job = Job.new(job_params)
      if job.save!
          render json: job
      end
  end

  def update
  end

  def destroy
  end

  private

  def job_params
        params.require(:job).permit(:name, :description, :origin, :destination, :cost, :containers_needed, :user_id)
  end
end
