require_relative 'spec_helper'
require_relative '../bank'

describe Bank do

  let(:bank) do    
    Bank.new('GA Bank')
  end

  # the dot is a convention for class method
  describe '.new' do
    it 'creates a bank object' do
      expect(bank).to_not eq nil
    end

    it 'assigns a name' do
      expect(bank.name).to eq "GA Bank"
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq 0
    end
  end

  # convention for instance methods is to prefix it with a #
  describe '#create_account' do
    it 'creates a new account' do
      bank.create_account('Homer', 200)
      expect(bank.accounts['Homer']).to eq 200

      expect(bank.balance('Homer')).to eq 200
    end

    it 'ignores opening balance of less than or equal to 0' do
      bank.create_account('Marge', -100)
      expect(bank.balance('Marge')).to eq nil 

      bank.create_account('Grandpa', 0)
      expect(bank.balance('Grandpa')).to eq nil     
    end

  end

  describe '#deposit' do
    it 'adds an amount to the client balance' do
      bank.create_account('Lisa', 5)
      bank.deposit('Lisa', 1_000_000)
      expect(bank.balance('Lisa')).to eq(1_000_000 + 5)  
    end
  end

  describe '#balance' do
    it 'returns the balance for an account' do
      bank.create_account('Maggie', 1)
      expect(bank.balance('Maggie')).to eq 1
    end
  end

  describe '#withdraw' do
    it 'subtracts an amount from the account balance' do
      bank.create_account('Snowball', 10)
      bank.withdraw('Snowball', 5)
      expect(bank.balance('Snowball')).to eq(10-5)
    end

    it 'ignores requests for withdrawals greater than the account balance' do
      bank.create_account('Bartman', 1)
      bank.withdraw('Bartman', 1_000_000_000)
      expect(bank.balance('Bartman')).to eq 1
    end
  end
end