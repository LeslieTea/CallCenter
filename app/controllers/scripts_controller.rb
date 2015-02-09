class ScriptsController < ApplicationController
  def index
    @scripts = Script.all
  end
  
  def show
    @script = script.find_by (params[:id])
  end
  
  def new

  end
  
  def create

  end
  
  def edit

  end
  
  def update

  end
end
