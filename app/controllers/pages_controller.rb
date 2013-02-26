class PagesController < ApplicationController
  before_filter :logged_in_user

  def home
    #@title = '' 
  end

  def prospects
    @title = 'Prospects'
  end

  def agents
    @title = 'Agents'  
  end

  def backoffice
    @title = 'Backoffice'  
  end

  private
    def logged_in_user
      redirect_to login_url, notice: 'Accesso restrito' unless logged_in?
    end
end
