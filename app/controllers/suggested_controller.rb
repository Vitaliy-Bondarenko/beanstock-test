class SuggestedController < ApplicationController
  def user  
    if current_user == nil
      redirect_to root_path
    end
  end
end
