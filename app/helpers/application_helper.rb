# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def set_focus_to_id(id)
    javascript_tag("document.getElementById('#{id}').focus();");
  end
end
