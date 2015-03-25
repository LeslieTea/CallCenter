class ScriptsController < ApplicationController
  def index
    @scripts = Script.all
  end
  
  def show
    @script = Script.find_by(params[:script_id])
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
