module ApplicationHelper
  def seconds_to_days(seconds)
    if seconds < 86_400
      return "today"
    else
      days = (seconds / 86_400).round
      return "#{pluralize(days, 'day')} ago"
    end
  end
end
