class SuggestedController < ApplicationController
  before_filter :require_login, :only => [:user]

  def user
  end

end
