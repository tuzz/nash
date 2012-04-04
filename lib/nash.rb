class NilClass
  def method_missing(method, *args)
    if method == :[]
      raise NoMethodError.new("undefined method `[]' for nil:NilClass, with argument #{args.first.inspect}")
    end
    super
  end
end
