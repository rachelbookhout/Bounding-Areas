class BoundingArea

  def initialize(boxes = [])
    @boxes = boxes
  end

  def contains_point?(x,y)
    results = []
    @boxes.each do |box|
      if box.left <= x && x <= box.right &&  box.bottom <= y && y <= box.top
        results <<  "true"
      else
        results << "false"
      end
    end
    if results.include?("true")
      true
   else
    false
   end
end

end

