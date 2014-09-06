class BoundingBox

  def initialize(start_x,start_y,width,height)
    @start_x = start_x
    @start_y = start_y
    @width = width
    @height = height
  end

  def width
    @width
  end

  def height
    @height
  end

  def left
    @start_x
  end

  def right
    @width + @start_x.abs
  end

  def top
    @start_y + height
  end

  def bottom
    @start_y
  end

  def contains_point?(x,y)
    if @start_x <= x && x<=(@width + @start_x) &&  @start_y <= y && y <= (@height + @start_y)
      true
    else
      false
    end
  end

end

