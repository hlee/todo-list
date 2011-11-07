module HomeHelper
  def priority2color color
    case color
    when 1
      'color-orange'
    when 2
      'color-green'
    when 3
      'color-red'
    when 4
      'color-yellow'
    when 5
      'color-blue'
    else
      'color-white'
    end
  end
end
