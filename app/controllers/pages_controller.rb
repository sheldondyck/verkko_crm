class PagesController < ApplicationController
  before_filter :authorize_user

  def home
    @title = '' 
    @prospects_cnt = Prospect.count
    @agents_cnt = 0
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
    def authorize_user
      redirect_to login_url, notice: 'Accesso restrito' unless logged_in?
    end
end
