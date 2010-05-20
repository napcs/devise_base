module LayoutHelper
  def title(title, show_title = true)
    content_for(:title) { title.to_s }
    @show_title = show_title
  end
  
  def show_title?
    @show_title
  end
end