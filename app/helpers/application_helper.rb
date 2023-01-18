module ApplicationHelper
  def active?(link_path)
    if current_page?(link_path)
      " focus-tab"
    else
      ""
    end
  end
end
