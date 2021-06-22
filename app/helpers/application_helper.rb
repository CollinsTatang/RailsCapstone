module ApplicationHelper
  def alert_notice
    return unless notice

    content_tag(:div, class: 'alert alert-secondary', role: 'alert') do
      notice
    end
  end

  def nav_category_all(categories)
    return unless categories

    categories
  end
end
