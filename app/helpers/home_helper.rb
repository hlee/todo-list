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
  
  def color_list
    options_for_select( [['urgent(orange)','1'], ['normal(green)','2'], ['(red)','3'], ['(yellow)',4], ['(blue)',5],])
  end
  
  def stage_list
    options_for_select([['future', 1],['current', 2],['prepare', 3]])
  end
end
