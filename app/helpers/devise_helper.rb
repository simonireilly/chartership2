module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?
    messages = resource.errors.full_messages.map { |msg| content_tag(:span, msg,class: 'navbar-text') }.join
    html = <<-HTML
        #{messages}
    HTML
    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end