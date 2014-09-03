module BSpec
  class TestObject
    attr_reader :expression
    def initialize(expression)
      @expression = expression
    end

    def to_be(value)
      raise "expected #{value} but got #{expression}" unless expression == value
      true
    end
  end

  def want(expression)
    TestObject.new(expression)
  end
end
