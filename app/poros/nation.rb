class Nation
  attr_reader :members

  def initialize(data)
    # require "pry"; binding.pry
    @members = data.count
    # require "pry"; binding.pry
  end
end
