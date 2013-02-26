class PagesController < ApplicationController
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
end
