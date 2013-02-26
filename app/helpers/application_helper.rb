module ApplicationHelper
  def title
    base_title = 'Verkko CRM'

    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def flash_handler
    div = ""
    flash.each do |key, value|
      div += "<div class='container'>"
      div += "<div class='alert alert-#{key}' data-dismiss='alert'>"
      div += "<strong>#{value}</strong>"
      div += "</div></div>"
    end
    div
  end

  def error_class(model, sym)
    if model.errors.messages.has_key?(sym)
      "error"
    end
  end
end
