#classic 'nil returns nil' hack
class NilClass
  def method_missing(*args)
    nil
  end
end
