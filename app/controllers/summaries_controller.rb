class SummariesController < ApplicationController
  def new
  end

  def show
    @summary = Summary.find(params[:id])
  end

  def edit
  end
end
