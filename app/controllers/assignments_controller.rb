class AssignmentsController < ApplicationController
  def new
    @assignment = Assignment.new
  end

  def create
    

    if @assignment.save
      redirect_to project_path(@assignment.project), notice: 'Assignment was successfully created.'
    else
      render action: "new"
    end
  end

  def index
    @assignments = Assignment.all
  end
end
