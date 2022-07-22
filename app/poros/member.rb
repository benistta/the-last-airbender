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

  def formatted_allies
    if @allies.empty?
      @allies = "None"
    else
      @allies.join
    end
  end

  def formatted_enemies
    if @enemies.empty?
      @enemies = "None"
    else
      @enemies.join
    end
  end
end
