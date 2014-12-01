class Bank

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def name
    @name
  end

  def accounts
    @accounts
  end

  def create_account(name, amount)
    @accounts[name] = amount if amount > 0
  end

  def balance(name)
    @accounts[name]
  end    

  def deposit(name, amount)
    @accounts[name] += amount
  end

  def withdraw(name, amount)
    @accounts[name] -= amount if amount <= @accounts[name]
  end
end