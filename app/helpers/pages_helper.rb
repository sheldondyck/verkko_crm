module PagesHelper
  def active_controller(cntrl_name)
    if cntrl_name == controller.controller_name
      return 'active'
    end
  end

  def active(cntrl_name)
    if cntrl_name == controller.controller_name + '#' + controller.action_name then
      return 'active'
    end
  end
end
