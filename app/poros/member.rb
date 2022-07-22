class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(data)
    # require "pry"; binding.pry
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo = data[:photoUrl]
    # require "pry"; binding.pry
  end
end
