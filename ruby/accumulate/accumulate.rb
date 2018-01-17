class Array
  def accumulate
    if block_given?
      each_with_object([]) { |e, memo| memo << yield(e) }
    else
      to_enum
    end
  end
end
