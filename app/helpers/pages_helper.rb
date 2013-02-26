module PagesHelper
  def active(cntrl_name)
    if cntrl_name == controller.controller_name + '#' + controller.action_name then
      return 'active'
    end
  end
end
