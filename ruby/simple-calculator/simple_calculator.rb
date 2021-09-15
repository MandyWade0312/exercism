class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
    begin

    if second_operand == 0 && operation == '/'
        return "Division by zero is not allowed."
    end

    calculation = 0
    if operation == '+' 
      calculation = first_operand + second_operand
    elsif operation == '/'
      calculation = first_operand / second_operand
    elsif operation == '*'
      calculation = first_operand * second_operand
    end
    return "#{first_operand } #{operation} #{second_operand } = #{calculation}"
  
    rescue 
      raise ArgumentError
    end
  end
end
