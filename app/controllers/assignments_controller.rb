class AssignmentsController < ApplicationController
  def index
  end

  def show
  end

  def create
      assignment = Assignment.new(assignment_params)
      if assignment.save!
          render json: assignment
      end
  end

  def update
  end

  def destroy
  end

  private

  def assignment_params
      params.require(:assignment).permit(:user_id, :job_id, :boat_id)
  end
end
