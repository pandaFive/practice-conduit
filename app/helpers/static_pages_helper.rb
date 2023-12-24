module StaticPagesHelper
end

class CustomLinkRenderer < WillPaginate::ActionView::LinkRenderer
  def container_attributes
    super.except(:first_label, :last_label, :next_label, :previous_label)
  end

  def page_number(page)
    if page == current_page
      tag(:li, tag(:a, page, class: 'page-link'), class: 'page-item active')
    else
      tag(:li, link(page, page, rel: rel_value(page), class: 'page-link'), class: 'page-item')
    end
  end

  def previous_or_next_page(page, text, classname)
    if page
      tag(:li, link(text, page, class: 'page-link'), class: "page-item #{classname}")
    else
      tag(:li, tag(:span, text, class: 'page-link'), class: "page-item #{classname} disabled")
    end
  end
end