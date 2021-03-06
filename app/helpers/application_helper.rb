module ApplicationHelper

  def sortable(column)
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to column, {:sort => column, :direction => direction}, {:class => css_class}
  end

end
