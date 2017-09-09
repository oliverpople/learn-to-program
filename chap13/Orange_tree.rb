class OrangeTree

  def initialize
    @height       = 0
    @orange_count = 0
    @alive        = true
  end

  def height
    if @alive
      @height
    else
      'The dead tree is shrinking.'
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'The dead tree has no oranges'
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.2
      @orange_count = 0

      if @height > 10 && rand(2) > 0
        @alive = false
        'The tree is now dead. RIP tree.'
      elsif @height > 2
        @orange_count = (@height * 10 - 20).to_i
        "This your your tree grew to #{@height}m tall" +
        "and produced #{@orange_count} oranges."
      else
        "This your your tree grew to #{@height}m tall" +
        "but is yet to bear fruit."
      end
    else
      'A year later, the tree is still dead.'
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count =  @orange_count -1
        'You picked a delicious orange!'
      else
        'You search, but find no oranges'
      end
    else
      'A dead tree has nothing to pick.'
    end
  end
end

ot = OrangeTree.new
23.times do
  ot.one_year_passes

end
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.height)
puts (ot.count_the_oranges)
puts (ot.pick_an_orange)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.height)
puts (ot.count_the_oranges)
puts (ot.pick_an_orange)
