module SessionsHelper
  def user_sessions
    if current_user
      (link_to 'Home', root_path, class: 'nav-link') +
        (link_to 'Available', articles_path, class: 'nav-link') +
        (link_to 'Create Article', new_article_path, class: 'nav-link') +
        (link_to 'Create Category', new_category_path, class: 'nav-link') +
        (link_to 'Logout', logout_path, class: 'nav-link')
    else
      (link_to 'Home', root_path, class: 'nav-link') +
        (link_to 'Login', new_session_path, class: 'nav-link') +
        (link_to 'Sign up', new_user_path, class: 'nav-link')
    end
  end
end
