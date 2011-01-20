class FrontController < ApplicationController
  def index
    @people = Person.order("name")
    @changes = Change.limit(10).order("created_at DESC")
  end

end
