module ApplicationHelper
  def formatted_created_at(record)
    record.created_at.strftime('%B %e').sub(/(?<=\d)(?=(\d{2})+(\D|$))/, '\&<span class="date">th</span>').html_safe
  end
end
