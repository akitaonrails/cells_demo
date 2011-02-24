class MenuCell < Cell::Rails

  def display(current_page)
    @current_page = current_page
    render
  end

  def page_menu(name, slug, current_page, page)
    path = slug == "root" ? root_path : page_path(slug)
    link = page.link_to("<span class=\"menu_ar\">#{name}</span>".html_safe, path) 
    slug = slug == "root" ? "homepage" : slug
    highlight = current_page.slug == slug ? " class=\"highlight\"" : ""

    "<li#{highlight}><span class=\"menu_r\">#{link}</span></li>".html_safe
  end
end
