module ApplicationHelper
    def format_events_date(date)
        date.nil?  ? 'not specified' : (l date, format: :long)
    end
end
