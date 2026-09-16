class Range
  def *(other)
    other.adapt_to_range(self)
  end
end
