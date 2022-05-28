module ApplicationHelper
  def active?(link_path)
    if current_page?(link_path)
      "focus-tab"
    else
      ""
    end
  end

  # RATING IN BILLARD BALLS LOL

  def render_balls(value)
    output = ''
    if (1..5).include?(value.to_i)
      value.to_i.times { output += '🎱'}
    end
    output
  end
end
