class PagesController < ApplicationController
  def index
    @jobs = Job.limit(3).order("RANDOM()")
  end
end
