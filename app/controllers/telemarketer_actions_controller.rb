class TelemarketerActionsController < ApplicationController
  
  def index
    @tma = TelemarketerAction.all
  end
  
end
