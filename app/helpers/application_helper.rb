module ApplicationHelper
  def render_if(condition, data)
    render data if condition
  end
end
