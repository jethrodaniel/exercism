class Series
    def initialize(text)
      @text = text
    end

    def slices(n)
      raise ArgumentError if n > @text.size
      
      @text.each_char.each_cons(n).map(&:join)
    end      
end
