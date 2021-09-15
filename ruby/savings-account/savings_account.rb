module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0 
      return -3.213
    elsif balance >= 0 && balance < 1000
      return 0.5
    elsif balance >= 1000 && balance < 5000
      return 1.621
    elsif balance >= 5000
      return 2.475
    end
  end

  def self.annual_balance_update(balance)
    if balance < 0 
      return (balance * 0.03213) + balance
    elsif balance >= 0 && balance < 1000
      return (balance * 0.005) + balance
    elsif balance >= 1000 && balance < 5000
      return (balance * 0.01621) + balance
    elsif balance >= 5000
      return (balance * 0.02475) + balance
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    counter = 0
    while current_balance < desired_balance
      if current_balance < 0 
        current_balance = (current_balance * 0.03213) + current_balance
        counter += 1
      elsif current_balance >= 0 && current_balance < 1000
        current_balance = (current_balance * 0.005) + current_balance
        counter += 1
      elsif current_balance >= 1000 && current_balance < 5000
        current_balance = (current_balance * 0.01621) + current_balance
        counter += 1
      elsif current_balance >= 5000
        current_balance = (current_balance * 0.02475) + current_balance
        counter += 1
      end
    end
   return counter
  end
end
