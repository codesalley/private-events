module ApplicationHelper
  def format_events_date(date)
    date.nil? ? 'not specified' : (l date, format: :long)
  end

  def nav_items
    user_signed_in? ? 'user' : 'non_user'
  end
end
