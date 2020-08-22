class Wallet
  attr_reader :cents, :wallet

  def initialize
    @cents = 0
    @wallet = []
  end
end
